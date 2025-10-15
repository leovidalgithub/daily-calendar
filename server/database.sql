-- Script para crear la base de datos y la tabla
-- Ejecutar en MySQL

-- Crear la base de datos (opcional si ya existe)
CREATE DATABASE IF NOT EXISTS daily_calendar;

-- Usar la base de datos
USE daily_calendar;

-- Crear la tabla para las entradas diarias
CREATE TABLE IF NOT EXISTS daily_entries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    entry_date DATE UNIQUE NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insertar algunos datos de ejemplo (opcional)
INSERT IGNORE INTO daily_entries (entry_date, content) VALUES 
('2025-10-15', '<p><strong>¡Bienvenido a tu calendario personal!</strong></p><p>Esta es una entrada de ejemplo. Puedes editarla o crear nuevas entradas seleccionando cualquier fecha del calendario.</p>'),
('2025-10-14', '<p>Ayer fue un buen día para comenzar este proyecto.</p><ul><li>Configuré el entorno de desarrollo</li><li>Creé la estructura básica</li><li>Todo funcionando correctamente</li></ul>');

-- Verificar que todo se creó correctamente
SELECT 'Base de datos y tabla creadas correctamente' as status;
SELECT COUNT(*) as total_entries FROM daily_entries;