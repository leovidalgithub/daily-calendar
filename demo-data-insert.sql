-- Limpiar datos existentes y insertar datos de demo
-- Ejecutar en MySQL

USE daily_calendar;

-- Limpiar la tabla
DELETE FROM daily_entries;

-- Reiniciar el AUTO_INCREMENT
ALTER TABLE daily_entries AUTO_INCREMENT = 1;

-- Insertar datos de demo del archivo daily-calendar-demo.txt

-- -------------------- Oct 24 2025
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-24', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Marie/Sonia on Canales', 'duration', '40m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '104781', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Home Furnishings - 3618\n: 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '105927', 'department', 'SPRINT', 'duration', '35m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] TA Appliance - Metafield variants and tags - Part 9\nstaging TA - DB clean up - checking code, db functions and views\nshopify store clean up - making up a complete example for David'),
    JSON_OBJECT('taskId', '105817', 'department', 'SPRINT', 'duration', '3h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] UI for file generation\nstarting working on this'),
    JSON_OBJECT('taskId', '105899', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 Lite - Le Bon Appliances Upgrade - 3623 - old (1469)\n: 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '104908', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'V3 Lite - Fiesta Furniture Upgrade - 3616 - old (1506)\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. WEDN. OCT. 15TH)')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', '11:30 meeting with Marie-claire and Sonia regarding Rebates collection page for Canales'),
    JSON_OBJECT('content', 'call Lino showing me something regarding collection models in Imagotags')
  )
), 'structured');

-- -------------------- Oct 25 2025
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-25', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Thanksgiving Day', 'duration', '7h30m', 'timeSubmitted', false, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured');

-- -------------------- Oct 27 2025
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-27', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Sonia, Lino', 'duration', '1h', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105817', 'department', 'SPRINT', 'duration', '9h original', 'timeSubmitted', false, 'status', 'DONE', 'description', ': [DEV] UI for file generation\nfinish working on this - QA sent to Lino'),
    JSON_OBJECT('taskId', '104782', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Home Furnishings - 3618\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. TUESD. OCT. 14TH)')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'call with Sonia on KernHill imagoTags onboarding proccess'),
    JSON_OBJECT('content', 'SUPPORT CASE for KERNHILL to onboard on imagoTags')
  )
), 'structured');

-- -------------------- Oct 28 2025
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-10-28', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Lino on Imagotags', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '105799', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Tailbasify Unleashed - Features Display Issue\nchecking this issue and another one reported by Canales\nsending a response back to Marie-Claire'),
    JSON_OBJECT('taskId', '106001', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'Cantrex 1 - Gagnon Meubles - 3615\n: Meubles Gagnon -DNS\nsetting DNS records according to an email they sent (Marie-Claire)'),
    JSON_OBJECT('taskId', '106080', 'department', 'SUPPORT', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', ': [DEV]: Kern-Hill - Digital price tags - SES Imagotag\nchecking the information to onboard on API Imagotag integration'),
    JSON_OBJECT('taskId', '105774', 'department', 'ONBOARDING', 'duration', '', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Low Ticket Offer - Tri-City Appliance Upgrade - 3622 - (old - 2439)\n: 3.3 - [WB] - Website building initial set-up by programmer')
  ),
  'notes', JSON_ARRAY()
), 'structured');

-- Verificar que se insertaron correctamente
SELECT 'Datos de demo insertados correctamente' as status;
SELECT entry_date, JSON_LENGTH(structured_entries, '$.meetings') as meetings_count, 
       JSON_LENGTH(structured_entries, '$.tasks') as tasks_count,
       JSON_LENGTH(structured_entries, '$.notes') as notes_count
FROM daily_entries 
ORDER BY entry_date;