-- Noviembre 2025 - Generado con reglas actualizadas
-- Aplicando las 7 reglas completas con nueva estructura
-- Fuente: data.txt

-- NOV 07 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-11-07', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105809', 'department', 'SPRINT', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', '[ANALYSIS] Tailbasify Back-end Health - continue on this')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'SUBMIT TIME - SUBMIT TIME - SUBMIT TIME'),
    JSON_OBJECT('content', '1. Cada error de log empieza con >>>\n2. Es posible que alguno de esos errores YA haya sido solucionado\n3. Es posible que alguna linea de las indicadas en los logs no corresponda exactamente con la linea en el codigo debido a modificaciones que se han hecho en el codigo despues de que ese log fue logueado\n4. Necesito que busques error por error en el codigo y propongas una solucion no muy complicada. Por ejemplo, se me ocurre que podriamos utilizar la funcion nativa de C# para los Dictionary TryAdd y si devuelve FALSE entonces enviariamos un log\n5. La idea principal de este analisis es buscar una solucion para que el proceso enter no se detenga, sino que esa linea (producto) sea saltada y logueada, pero que el whole process siga adelante\n6. No te vuelvas loco. Es un analisis sencillo. Analza error por error, localiza el lugar en el codigo y seguidamente propon alguna solucion\n7. Si quieres puedes crear un archivo en markdown para ir poniendo los resultados de tu analisis y posibles soluciones\n8. La info debe estar en ingles')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;