-- Script para eliminar todos los registros de Mayo 2025
-- Ejecutar con precaución - esta operación no se puede deshacer

-- Eliminar todos los registros del mes de mayo 2025
DELETE FROM daily_entries 
WHERE entry_date >= '2025-07-01' 
  AND entry_date <= '2025-07-31';

-- Verificar que los registros fueron eliminados
SELECT COUNT(*) as registros_mayo_2025 
FROM daily_entries 
WHERE entry_date >= '2025-05-01' 
  AND entry_date <= '2025-05-31';

-- El resultado debe ser 0 si la eliminación fue exitosa