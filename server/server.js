const express = require("express");
const mysql = require("mysql2/promise");
const cors = require("cors");
require("dotenv").config();

const app = express();
const PORT = process.env.PORT || 3001;

// Middleware
app.use(cors());
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
      content TEXT,
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )
  `;

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
    const { date, content } = req.body;

    // Validaciones
    if (!date || !content) {
      return res.status(400).json({ error: "Date and content are required" });
    }

    if (!/^\d{4}-\d{2}-\d{2}$/.test(date)) {
      return res
        .status(400)
        .json({ error: "Invalid date format. Use YYYY-MM-DD" });
    }

    // Usar INSERT ... ON DUPLICATE KEY UPDATE para manejar creación y actualización
    const query = `
      INSERT INTO daily_entries (entry_date, content) 
      VALUES (?, ?) 
      ON DUPLICATE KEY UPDATE 
        content = VALUES(content), 
        updated_at = CURRENT_TIMESTAMP
    `;

    const [result] = await db.execute(query, [date, content]);

    // Obtener la entrada actualizada
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

// Health check endpoint
app.get("/api/health", (req, res) => {
  res.json({
    status: "OK",
    timestamp: new Date().toISOString(),
    database: db ? "connected" : "disconnected",
  });
});

// Inicializar base de datos y servidor
initDatabase().then(() => {
  app.listen(PORT, () => {
    console.log(`🚀 Server running on http://localhost:${PORT}`);
    console.log(`📊 API endpoints available at http://localhost:${PORT}/api`);
  });
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
