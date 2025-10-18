import express from "express";
import mysql from "mysql2/promise";
import cors from "cors";
import dotenv from "dotenv";
import moment from "moment";

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

// Configuración de la base de datos
const dbConfig = {
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASSWORD || "",
  database: process.env.DB_NAME || "daily_calendar",
  port: process.env.DB_PORT || 3306,
};

// Crear conexión a la base de datos
let db;

async function initDatabase() {
  try {
    db = await mysql.createConnection(dbConfig);
    console.log("✅ Connected to MySQL database");

    // Crear la tabla si no existe
    await createTables();
  } catch (error) {
    console.error("❌ Error connecting to database:", error.message);
    console.error("🔍 Error details:", {
      code: error.code,
      errno: error.errno,
      sqlState: error.sqlState,
      host: dbConfig.host,
      port: dbConfig.port,
      user: dbConfig.user,
      database: dbConfig.database,
    });
    console.log(
      "⚠️  Server will start anyway. Database functions will not work until connection is established."
    );
    console.log(
      "🔄 You can try to reconnect later or check your database configuration."
    );
    db = null; // Asegurar que db esté en null
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

    // Determinar el tipo de entrada
    const type = entryType || (structuredEntries ? 'structured' : 'text');

    const structuredEntriesJSON = structuredEntries ? JSON.stringify(structuredEntries) : null;

    const query = "INSERT INTO daily_entries (entry_date, content, structured_entries, entry_type) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE content = VALUES(content), structured_entries = VALUES(structured_entries), entry_type = VALUES(entry_type), updated_at = CURRENT_TIMESTAMP";

    const [result] = await db.execute(query, [
      date, 
      content || null, 
      structuredEntriesJSON, 
      type
    ]);

    const [rows] = await db.execute(
      "SELECT * FROM daily_entries WHERE entry_date = ?",
      [date]
    );
    console.log("  Retrieved after save - type:", typeof rows[0].structured_entries);

    res.json({
      message: result.insertId
        ? "Entry created successfully"
        : "Entry updated successfully",
      data: {
        date: rows[0].entry_date,
        content: rows[0].content,
        structured_entries: rows[0].structured_entries ? (() => {
          try {
            console.log("POST - Trying to parse:", rows[0].structured_entries);
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
      "SELECT entry_date, created_at, updated_at FROM daily_entries ORDER BY entry_date DESC"
    );

    res.json({
      entries: rows.map((row) => ({
        date: row.entry_date,
        created_at: row.created_at,
        updated_at: row.updated_at,
      })),
    });
  } catch (error) {
    console.error("Error fetching entries:", error);
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

    const [rows] = await db.execute("SELECT DATE(entry_date) as entry_date_string, entry_date, content, structured_entries FROM daily_entries ORDER BY entry_date ASC");
    
    let allTaskOccurrences = [];
    let totalDurationMinutes = 0;
    
    rows.forEach(row => {
      try {
        const dateString = row.entry_date_string;
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

function parseDurationToMinutes(durationStr) {
  if (!durationStr) return 0;
  
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
    formattedTime: moment().format('YYYY-MM-DD HH:mm:ss'),
    database: db ? "connected" : "disconnected",
    npmPackageTest: "moment.js working correctly",
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
