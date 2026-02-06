import express from "express";
import mysql from "mysql2/promise";
import cors from "cors";
import dotenv from "dotenv";

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
const corsOptions = {
  origin: [
    "https://daily-calendar.leovidal.es",
    "http://localhost:5173"
  ],
  credentials: true,
};
app.use(cors(corsOptions));
app.use(express.json());

// Middleware de logging para todas las requests
app.use((req, res, next) => {
  console.log(`[${new Date().toISOString()}] ${req.method} ${req.url}`);
  next();
});

// Configuración de la base de datos con pool y timeouts
const dbConfig = {
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASSWORD || "",
  database: process.env.DB_NAME || "daily_calendar",
  port: process.env.DB_PORT || 3306,
  connectionLimit: 5,
  connectTimeout: 10000,
  waitForConnections: true,
  queueLimit: 0
};

// Crear pool de conexiones a la base de datos
let db;

async function initDatabase() {
  try {
    db = mysql.createPool(dbConfig);
    console.log("✅ Database pool created");

    // Probar la conexión
    const connection = await db.getConnection();
    console.log("✅ Connected to MySQL database");
    connection.release();

    // Crear la tabla si no existe
    await createTables();
  } catch (error) {
    console.error("❌ Error connecting to database:", error.message);
    console.log("⚠️  Server will start anyway. Database functions will not work until connection is established.");
    db = null;
  }
}

async function createTables() {
  const createTableQuery = `
    CREATE TABLE IF NOT EXISTS daily_entries (
      id INT AUTO_INCREMENT PRIMARY KEY,
      entry_date DATE UNIQUE NOT NULL,
      content TEXT DEFAULT NULL,
      structured_entries JSON DEFAULT NULL,
      entry_type ENUM('text', 'structured', 'hybrid') DEFAULT 'structured',
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )`;

  try {
    await db.execute(createTableQuery);
    console.log("✅ Tables created or verified successfully");
  } catch (error) {
    console.error("❌ Error creating tables:", error);
  }
}

// Middleware para verificar conexión de base de datos
const checkDatabaseConnection = (req, res, next) => {
  if (!db) {
    return res.status(500).json({
      error: "Database not connected",
      message:
        "Please check your database configuration and ensure the database server is accessible",
    });
  }
  next();
};

// Authentication endpoint
app.post('/api/auth', (req, res) => {
  try {
    const { password } = req.body;
    
    if (!password) {
      return res.status(400).json({ 
        success: false, 
        message: 'Password is required' 
      });
    }
    
    const appPassword = process.env.APP_PASSWORD;
    
    if (!appPassword) {
      console.error('APP_PASSWORD not configured in environment variables');
      return res.status(500).json({ 
        success: false, 
        message: 'Server configuration error' 
      });
    }
    
    if (password === appPassword) {
      // Generate a simple token (in production, use JWT or similar)
      const token = Buffer.from(`${password}:${Date.now()}`).toString('base64');
      
      res.json({ 
        success: true, 
        message: 'Authentication successful',
        token: token
      });
    } else {
      res.status(401).json({ 
        success: false, 
        message: 'Incorrect password' 
      });
    }
  } catch (error) {
    console.error('Auth error:', error);
    res.status(500).json({ 
      success: false, 
      message: 'Internal server error' 
    });
  }
});

// Rutas de la API

// GET /api/entry/:date - Obtener entrada para una fecha específica
app.get("/api/entry/:date", checkDatabaseConnection, async (req, res) => {
  try {
    const { date } = req.params;

    // Validar formato de fecha (YYYY-MM-DD)
    if (!/^\d{4}-\d{2}-\d{2}$/.test(date)) {
      return res
        .status(400)
        .json({ error: "Invalid date format. Use YYYY-MM-DD" });
    }

    const [rows] = await db.execute(
      "SELECT * FROM daily_entries WHERE entry_date = ?",
      [date]
    );

    if (rows.length === 0) {
      return res.status(404).json({ message: "No entry found for this date" });
    }

    res.json({
      date: rows[0].entry_date,
      content: rows[0].content,
      structured_entries: rows[0].structured_entries ? (() => {
        try {
          return JSON.parse(rows[0].structured_entries);
        } catch (error) {
          console.error("Error parsing structured_entries JSON:", error);
          console.error("Raw value:", rows[0].structured_entries);
          return null;
        }
      })() : null,
      entry_type: rows[0].entry_type,
      created_at: rows[0].created_at,
      updated_at: rows[0].updated_at,
    });
  } catch (error) {
    console.error("Error fetching entry:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// POST /api/entry - Crear o actualizar entrada
app.post("/api/entry", checkDatabaseConnection, async (req, res) => {
  try {
    const { date, content, structuredEntries, entryType } = req.body;

    if (!date) {
      return res.status(400).json({ error: "Date is required" });
    }

    if (!content && !structuredEntries) {
      return res.status(400).json({ error: "Either content or structuredEntries is required" });
    }

    if (!/^\d{4}-\d{2}-\d{2}$/.test(date)) {
      return res
        .status(400)
        .json({ error: "Invalid date format. Use YYYY-MM-DD" });
    }

    // Siempre usar tipo estructurado
    const type = 'structured';

    const structuredEntriesJSON = structuredEntries ? JSON.stringify(structuredEntries) : null;

    const query = "INSERT INTO daily_entries (entry_date, content, structured_entries, entry_type) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE content = VALUES(content), structured_entries = VALUES(structured_entries), entry_type = VALUES(entry_type), updated_at = CURRENT_TIMESTAMP";

    // Asegurar que la fecha se guarde correctamente sin zona horaria
    const [result] = await db.execute(query, [
      date, // date ya viene en formato YYYY-MM-DD del frontend
      content || null,
      structuredEntriesJSON,
      type
    ]);

    const [rows] = await db.execute(
      "SELECT * FROM daily_entries WHERE entry_date = ?",
      [date]
    );

    res.json({
      message: result.insertId
        ? "Entry created successfully"
        : "Entry updated successfully",
      data: {
        date: rows[0].entry_date,
        content: rows[0].content,
        structured_entries: rows[0].structured_entries ? (() => {
          try {
            //console.log("POST - Trying to parse:", rows[0].structured_entries);
            return JSON.parse(rows[0].structured_entries);
          } catch (error) {
            console.error("POST - Error parsing structured_entries JSON:", error);
            console.error("POST - Raw value:", rows[0].structured_entries);
            return null;
          }
        })() : null,
        entry_type: rows[0].entry_type,
        created_at: rows[0].created_at,
        updated_at: rows[0].updated_at,
      },
    });
  } catch (error) {
    console.error("Error saving entry:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// GET /api/entries - Obtener todas las entradas (opcional, para futuras funcionalidades)
app.get("/api/entries", checkDatabaseConnection, async (req, res) => {
  try {
    const [rows] = await db.execute(
      "SELECT DATE_FORMAT(entry_date, '%Y-%m-%d') as entry_date, created_at, updated_at FROM daily_entries ORDER BY entry_date DESC"
    );

    res.json({
      entries: rows.map((row) => ({
        date: row.entry_date, // Ahora es string YYYY-MM-DD, no Date object
        created_at: row.created_at,
        updated_at: row.updated_at,
      })),
    });
  } catch (error) {
    console.error("Error fetching entries:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// GET /api/export - Obtener todas las entradas con contenido completo para exportar
app.get("/api/export", checkDatabaseConnection, async (req, res) => {
  try {
    // Usar DATE_FORMAT para evitar problemas de timezone
    const [rows] = await db.execute(
      "SELECT DATE_FORMAT(entry_date, '%Y-%m-%d') as entry_date, structured_entries FROM daily_entries WHERE structured_entries IS NOT NULL ORDER BY entry_date ASC"
    );

    const entries = rows.map((row) => {
      let structuredData = null;

      // Parse JSON si es necesario
      if (row.structured_entries) {
        try {
          structuredData = typeof row.structured_entries === 'string'
            ? JSON.parse(row.structured_entries)
            : row.structured_entries;
        } catch (error) {
          console.error(`Error parsing structured_entries for date ${row.entry_date}:`, error);
        }
      }

      return {
        date: row.entry_date, // Ahora es string YYYY-MM-DD, no Date object
        structured_entries: structuredData
      };
    });

    // Filtrar entradas que tienen datos válidos
    const validEntries = entries.filter(entry => {
      if (!entry.structured_entries) return false;
      const { meetings = [], tasks = [], notes = [] } = entry.structured_entries;
      return meetings.length > 0 || tasks.length > 0 || notes.length > 0;
    });

    res.json({
      entries: validEntries,
      count: validEntries.length
    });
  } catch (error) {
    console.error("Error fetching export data:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// Task analytics endpoint - obtener estadísticas de un Task ID específico
app.get("/api/task-analytics/:taskId", checkDatabaseConnection, async (req, res) => {
  try {
    const { taskId } = req.params;

    if (!taskId) {
      return res.status(400).json({ error: "Task ID is required" });
    }

    const [rows] = await db.execute("SELECT id, DATE_FORMAT(entry_date, '%Y-%m-%d') as entry_date, content, structured_entries FROM daily_entries ORDER BY entry_date ASC");

    let allTaskOccurrences = [];
    let totalDurationMinutes = 0;

    rows.forEach(row => {
      try {
        // Ahora entry_date viene como string puro YYYY-MM-DD desde MySQL
        const dateString = row.entry_date;
        let rawData = row.structured_entries || row.content;

        if (!rawData || (typeof rawData === 'string' && rawData.trim() === '')) {
          return;
        }

        let content;
        try {
          content = typeof rawData === 'string' ? JSON.parse(rawData) : rawData;
        } catch (jsonError) {
          return;
        }

        if (!content || typeof content !== 'object' || !content.tasks || !Array.isArray(content.tasks)) {
          return;
        }

        content.tasks.forEach((task, index) => {
          if (task && task.taskId === taskId) {
            let durationMinutes = 0;
            if (task.duration) {
              durationMinutes = parseDurationToMinutes(task.duration);
              totalDurationMinutes += durationMinutes;
            }

            allTaskOccurrences.push({
              date: dateString,
              taskIndex: index,
              duration: task.duration || '',
              durationMinutes: durationMinutes,
              department: task.department || '',
              status: task.status || '',
              description: task.description || '',
              timeSubmitted: task.timeSubmitted || false
            });
          }
        });

      } catch (parseError) {
        console.error(`Error processing ${dateString}:`, parseError.message);
      }
    });

    // Ordenar por fecha para obtener orden cronológico
    allTaskOccurrences.sort((a, b) => new Date(a.date) - new Date(b.date));

    const totalDurationFormatted = formatMinutesToDuration(totalDurationMinutes);

    res.json({
      taskId,
      totalOccurrences: allTaskOccurrences.length,
      totalDuration: totalDurationFormatted,
      totalDurationMinutes,
      isUnique: allTaskOccurrences.length === 1,
      occurrences: allTaskOccurrences.map((occurrence, index) => ({
        ...occurrence,
        chronologicalOrder: index + 1,
        orderDisplay: `${index + 1}/${allTaskOccurrences.length}`
      })),
      dates: [...new Set(allTaskOccurrences.map(occ => occ.date))]
    });

  } catch (error) {
    console.error("Error getting task analytics:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// Search endpoint - buscar en contenido estructurado
app.get("/api/search", checkDatabaseConnection, async (req, res) => {
  try {
    const { q } = req.query;

    if (!q || q.trim().length === 0) {
      return res.json({ results: [], total: 0 });
    }

    const searchTerm = q.trim();

    // Obtener todas las entradas con structured_entries
    const [rows] = await db.execute(
      "SELECT DATE_FORMAT(entry_date, '%Y-%m-%d') as entry_date, structured_entries FROM daily_entries WHERE structured_entries IS NOT NULL ORDER BY entry_date DESC"
    );

    let searchResults = [];

    rows.forEach(row => {
      try {
        const dateString = row.entry_date;
        let structuredData;

        try {
          structuredData = typeof row.structured_entries === 'string'
            ? JSON.parse(row.structured_entries)
            : row.structured_entries;
        } catch (jsonError) {
          return; // Skip invalid JSON
        }

        if (!structuredData || typeof structuredData !== 'object') {
          return;
        }

        // Buscar en meetings
        if (structuredData.meetings && Array.isArray(structuredData.meetings)) {
          structuredData.meetings.forEach((meeting, index) => {
            const searchableText = [
              meeting.title || '',
              meeting.description || '',
              meeting.duration || ''
            ].join(' ').toLowerCase();

            if (searchableText.includes(searchTerm.toLowerCase())) {
              searchResults.push({
                date: dateString,
                type: 'meeting',
                title: meeting.title || 'Untitled Meeting',
                description: meeting.description || '',
                duration: meeting.duration || '',
                timeSubmitted: meeting.timeSubmitted || false,
                index: index,
                preview: truncateText(meeting.title || meeting.description || 'Meeting', 60)
              });
            }
          });
        }

        // Buscar en tasks
        if (structuredData.tasks && Array.isArray(structuredData.tasks)) {
          structuredData.tasks.forEach((task, index) => {
            const searchableText = [
              task.taskId || '',
              task.department || '',
              task.status || '',
              task.description || '',
              task.duration || ''
            ].join(' ').toLowerCase();

            if (searchableText.includes(searchTerm.toLowerCase())) {
              searchResults.push({
                date: dateString,
                type: 'task',
                taskId: task.taskId || '',
                department: task.department || '',
                status: task.status || '',
                description: task.description || '',
                duration: task.duration || '',
                timeSubmitted: task.timeSubmitted || false,
                index: index,
                preview: `#${task.taskId} (${task.department}) - ${truncateText(task.description || task.status, 40)}`
              });
            }
          });
        }

        // Buscar en notes
        if (structuredData.notes && Array.isArray(structuredData.notes)) {
          structuredData.notes.forEach((note, index) => {
            const searchableText = (note.content || '').toLowerCase();

            if (searchableText.includes(searchTerm.toLowerCase())) {
              searchResults.push({
                date: dateString,
                type: 'note',
                content: note.content || '',
                index: index,
                preview: truncateText(note.content || 'Note', 60)
              });
            }
          });
        }

      } catch (parseError) {
        console.error(`Error processing search for ${row.entry_date}:`, parseError.message);
      }
    });

    // Ordenar por fecha cronológica (más antiguos primero) y limitar a 50 resultados
    searchResults.sort((a, b) => new Date(a.date) - new Date(b.date));
    const limitedResults = searchResults.slice(0, 50);

    res.json({
      results: limitedResults,
      total: limitedResults.length,
      searchTerm: searchTerm,
      hasMore: searchResults.length > 50
    });

  } catch (error) {
    console.error("Error performing search:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// Helper function para truncar texto
function truncateText(text, maxLength) {
  if (!text || text.length <= maxLength) {
    return text;
  }
  return text.substring(0, maxLength) + '...';
}

function parseDurationToMinutes(durationStr) {
  if (!durationStr || durationStr === '0') return 0;

  let totalMinutes = 0;

  // Match hours (e.g., "2h", "1h")
  const hoursMatch = durationStr.match(/(\d+)h/);
  if (hoursMatch) {
    totalMinutes += parseInt(hoursMatch[1]) * 60;
  }

  const minutesMatch = durationStr.match(/(\d+)m/);
  if (minutesMatch) {
    totalMinutes += parseInt(minutesMatch[1]);
  }

  return totalMinutes;
}

function formatMinutesToDuration(totalMinutes) {
  if (totalMinutes === 0) return '';

  const hours = Math.floor(totalMinutes / 60);
  const minutes = totalMinutes % 60;

  if (hours === 0) {
    return `${minutes}m`;
  } else if (minutes === 0) {
    return `${hours}h`;
  } else {
    return `${hours}h${minutes}m`;
  }
}

// Health check endpoint
app.get("/api/health", (req, res) => {
  console.log('/api/health endpoint called');
  res.json({
    status: "OK",
    timestamp: new Date().toISOString(),
    database: db ? "connected" : "disconnected",
    pid: process.pid,
    uptime: process.uptime(),
    cwd: process.cwd(),
    nodeVersion: process.version,
    npmPackageTest: "npmPackageTest working correctly",
    nodeAppRestatus: "operational"
  });
});

// Debug endpoint
app.get("/", (req, res) => {
  res.json({
    message: "Daily Calendar API is running",
    timestamp: new Date().toISOString(),
    port: PORT
  });
});

// Inicializar base de datos y servidor
console.log("🔄 Starting server initialization...");
console.log("📍 Current working directory:", process.cwd());
console.log("📍 Environment:", process.env.NODE_ENV);
console.log("📍 Port:", PORT);

initDatabase().then(() => {
  app.listen(PORT, () => {
    console.log(`🚀 Server running on http://localhost:${PORT}`);
    console.log(`📊 API endpoints available at http://localhost:${PORT}/api`);
  });
}).catch((error) => {
  console.error("❌ Failed to start server:", error);
});

// Manejar cierre graceful
process.on("SIGINT", async () => {
  console.log("\n🛑 Shutting down gracefully...");
  if (db) {
    await db.end();
    console.log("✅ Database connection closed");
  }
  process.exit(0);
});
