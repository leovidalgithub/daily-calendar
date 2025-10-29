-- APRIL 2025 Data Insert Script - REGLAS APLICADAS CORRECTAMENTE
-- Generated from SCRUM.txt data using all parsing rules
-- Database structure: entry_date, structured_entries, entry_type
-- JSON structure with meetings, tasks, notes arrays

-- April 01, 2025 (Tuesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-01', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Team Building: Le Grand Canular : Mission Poisson d\'Avril', 'duration', '2h', 'timeSubmitted', true, 'departmentId', 'it-02', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99231', 'department', 'SPRINT', 'duration', '4h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 Changes - Merge and Deploy'),
    JSON_OBJECT('taskId', '98214', 'department', 'SPRINT', 'duration', '0m', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEPLOYMENT] V3 Changes - Merge and Deploy Production'),
    JSON_OBJECT('taskId', '97588', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] 2 - V3 Changes - Merge and Deploy')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 02, 2025 (Wednesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-02', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Lino, Etienne', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98265', 'department', 'SPRINT', 'duration', '3h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - Part 5'),
    JSON_OBJECT('taskId', '97777', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Best Buy Home Furniture-Up - 3592 - old (3313)\n: 3.9 - [WB] - Changes before website Review by programmer\ntiny change'),
    JSON_OBJECT('taskId', '99231', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 Changes - Merge and Deploy')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 03, 2025 (Thursday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-03', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Day off (vacation)', 'duration', '3h', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98265', 'department', 'SPRINT', 'duration', '3h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - Part 5')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'meeting with Alessandro at 10:30\n*Alessandro to make some badges examples\n*provide more options to the user to add collecitons, categories, etc.\n\tcan we get collections picker?\n*we don\'t need product picker')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 04, 2025 (Friday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-04', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98514', 'department', 'ONBOARDING', 'duration', '1h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - FRNKA A/C Sales & Appliances-Up - 3593 - old (2999)\n: 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '98438', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532)\n: 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '98303', 'department', 'SPRINT', 'duration', '2h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Tailbasify - Text fields in specs on mobile\nstarted working on this'),
    JSON_OBJECT('taskId', '98265', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - Part 5\nfinished working on this')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking latest comments from Alessandro on the V3 adjusments case')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 07, 2025 (Monday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-07', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '55m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '96013', 'department', 'ONBOARDING', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Calgary Furniture Emporium - 3589\n: 5.1 - [RW] - Changes before launch by programmer\nchecking this during the scrum - call Lino'),
    JSON_OBJECT('taskId', '98303', 'department', 'SPRINT', 'duration', '2h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n[ANALYSIS] Tailbasify - Text fields in specs on mobile'),
    JSON_OBJECT('taskId', '99230', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] V3 Changes - Merge and Deploy Production - Part 2'),
    JSON_OBJECT('taskId', '99231', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 Changes - Merge and Deploy'),
    JSON_OBJECT('taskId', '98308', 'department', 'SPRINT', 'duration', '10m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] [Research] Tailbasify - Warranties/Installations/Related Products at Cart')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 08, 2025 (Tuesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-08', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98287', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] 2 - Review Alerts - Services'),
    JSON_OBJECT('taskId', '98818', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Vern\'s Appliance, Sales, Service & Parts LTD - 3595\n: 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '98308', 'department', 'SPRINT', 'duration', '2h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] [Research] Tailbasify - Warranties/Installations/Related Products at Cart')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 09, 2025 (Wednesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-09', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98287', 'department', 'SPRINT', 'duration', '0m', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV] 2 - Review Alerts - Services'),
    JSON_OBJECT('taskId', '98308', 'department', 'SPRINT', 'duration', '4h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] [Research] Tailbasify - Warranties/Installations/Related Products at Cart\ncall Etienne'),
    JSON_OBJECT('taskId', '98967', 'department', 'SUPPORT', 'duration', '2h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Wilson Bates - Check if we can add a console link to run Imagotags')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 10, 2025 (Thursday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-10', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Checking TA Tailbasify stuck', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98987', 'department', 'SUPPORT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Filter menus on Platinum doing weird things'),
    JSON_OBJECT('taskId', '98308', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] [Research] Tailbasify - Warranties/Installations/Related Products at Cart'),
    JSON_OBJECT('taskId', '98712', 'department', 'ONBOARDING', 'duration', '2h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - TV Gauthier Electroplus - 3597\n: 3.3 - [WB] - Website building initial set-up by programmer')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking TA Appliance tailbasify process')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 11, 2025 (Friday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-11', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98308', 'department', 'SPRINT', 'duration', '0m', 'timeSubmitted', false, 'status', 'DONE', 'description', 'WRAPPED UP\n[ANALYSIS] [Research] Tailbasify - Warranties/Installations/Related Products at Cart'),
    JSON_OBJECT('taskId', '97516', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Schnell & Prestinger Appliances LLC - 3596\n: 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '99172', 'department', 'SPRINT', 'duration', '3h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Collection Image Selection and Upload'),
    JSON_OBJECT('taskId', '99171', 'department', 'SPRINT', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Collection Image Selection and Upload')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 14, 2025 (Monday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-14', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-05 Demos, Retro', 'duration', '2h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99172', 'department', 'SPRINT', 'duration', '0m', 'timeSubmitted', false, 'status', 'DONE', 'description', 'WRAPPED UP\n[ANALYSIS] Collection Image Selection and Upload'),
    JSON_OBJECT('taskId', '99171', 'department', 'SPRINT', 'duration', '4h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n[DEV] Collection Image Selection and Upload\nfinished & deployed'),
    JSON_OBJECT('taskId', '98880', 'department', 'ONBOARDING', 'duration', '1h5m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Everett\'s Furniture & Emporium-Up - 3598 - old (3009)\n: 3.3 - [WB] - Website building initial set-up by programmer')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 15, 2025 (Tuesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-15', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-06 Planning & Tasks assignments', 'duration', '2h45m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98880', 'department', 'ONBOARDING', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Everett\'s Furniture & Emporium-Up - 3598 - old (3009)\n: 3.3 - [WB] - Website building initial set-up by programmer\n9:39 AM 5/1/2025'),
    JSON_OBJECT('taskId', '98643', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Mansour Furniture & Appliance - 3599\n: 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '97784', 'department', 'ONBOARDING', 'duration', '1h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Best Buy Home Furniture-Up - 3592 - old (3313)\n: 5.2 - [RW] - Launched Website & Final Q.A - (D.D. WEDN. APRIL 16TH)')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 16, 2025 (Wednesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-16', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99062', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Light - CasaBella Furniture - 3600\n: 3.3 - [WB] - Tailbase console initial set-up by programmer'),
    JSON_OBJECT('taskId', '99063', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Light - CasaBella Furniture - 3600\n: 3.4 - [WB] - Catalog Sync'),
    JSON_OBJECT('taskId', '99231', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n[DEV] V3 Changes - Merge and Deploy'),
    JSON_OBJECT('taskId', '99230', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n[DEPLOYMENT] V3 Changes - Merge and Deploy Production - Part 2\nreceived green light from Alessandro - final checks and testing and deploy'),
    JSON_OBJECT('taskId', '99268', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - FINAL FINAL FINAL Changes.\nWeb Interface\n\thttp://127.0.0.1:4040\nForwarding\n\thttps://2a7b-85-55-119-82.ngrok-free.app -> http://localhost:3457')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'send a document to Etienne regarding a couple of concerns I have about Collections on Tailbasify Badges')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 17, 2025 (Thursday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-17', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '97784', 'department', 'ONBOARDING', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Best Buy Home Furniture-Up - 3592 - old (3313)\n: 5.2 - [RW] - Launched Website & Final Q.A - (D.D. WEDN. APRIL 16TH)\nchecking a kind of issue with pricing and some Feeds'),
    JSON_OBJECT('taskId', '98718', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - TV Gauthier Electroplus - 3597\n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '99250', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n[Analysis] Product Creation Tool - Duplicates'),
    JSON_OBJECT('taskId', '99352', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - Bug in Listing Page')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 18, 2025 (Friday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-18', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Etienne', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99352', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n[DEV] V3 - Bug in Listing Page'),
    JSON_OBJECT('taskId', '99287', 'department', 'ONBOARDING', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite - Calgary Furniture Emporium - 3589\n: Catalog Sync'),
    JSON_OBJECT('taskId', '99378', 'department', 'SUPPORT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Katy Discounted Appliances - 3584\n: [DEV]: Mobile Layout for Katy\'s has 2 search bars\nfixed - issue related with the V3 Adjustments deployment'),
    JSON_OBJECT('taskId', '98718', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - TV Gauthier Electroplus - 3597\n: 3.9 - [WB] - Changes before website Review by programmer\nmore changes'),
    JSON_OBJECT('taskId', '98824', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Vern\'s Appliance, Sales, Service & Parts LTD - 3595\n: 3.9 - [WB] - Changes before website Review by programmer')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'info confirmation for the Conditions Tag Rules')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 21, 2025 (Monday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-21', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Easter Holiday', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 22, 2025 (Tuesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-22', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Alain meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-03', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98886', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Everett\'s Furniture & Emporium-Up - 3598 - old (3009)\n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '98239', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 5\nchecking the TA info confirmation sent by Etienne'),
    JSON_OBJECT('taskId', '99252', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n[DEV] Tailbasify API - Mutation.metafieldDelete - Update deadline: Oct 1, 2025\nshopify deprecated mutattion'),
    JSON_OBJECT('taskId', '90613', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Seale\'s Furniture & Appliances - 3566\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D.THURSD. APRIL. 24TH)\ngetting everything ready for the next Thursday launch'),
    JSON_OBJECT('taskId', '99437', 'department', 'SUPPORT', 'duration', '20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Home Page Ads box sizes issue on V3\nissue related to home page ads boxes sizes')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 23, 2025 (Wednesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-23', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99437', 'department', 'SUPPORT', 'duration', '1h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Home Page Ads box sizes issue on V3\nissue related to home page ads boxes sizes'),
    JSON_OBJECT('taskId', '99268', 'department', 'SPRINT', 'duration', '5h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - FINAL FINAL FINAL Changes.'),
    JSON_OBJECT('taskId', '90613', 'department', 'ONBOARDING', 'duration', '15m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Seale\'s Furniture & Appliances - 3566\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D.THURSD. APRIL. 24TH)'),
    JSON_OBJECT('taskId', '99003', 'department', 'ONBOARDING', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasif Standard - Mason\'s Cloverdale Home Furnishings - 3601\n: 3.4 - [WB] - Catalog Sync')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'call Etienne on Badges, TA and other stuffs')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 24, 2025 (Thursday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-24', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Day off', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 25, 2025 (Friday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-25', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Etienne', 'duration', '50m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '90613', 'department', 'ONBOARDING', 'duration', '0m', 'timeSubmitted', false, 'status', 'DONE', 'description', 'Cantrex 2 - Seale\'s Furniture & Appliances - 3566\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D.THURSD. APRIL. 24TH)'),
    JSON_OBJECT('taskId', '99268', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - FINAL FINAL FINAL Changes.'),
    JSON_OBJECT('taskId', '99003', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasif Standard - Mason\'s Cloverdale Home Furnishings - 3601\n: 3.4 - [WB] - Catalog Sync'),
    JSON_OBJECT('taskId', '99002', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasif Standard - Mason\'s Cloverdale Home Furnishings - 3601\n: 3.3 - [WB] - Tailbase console initial set-up by programmer'),
    JSON_OBJECT('taskId', '98520', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - FRNKA A/C Sales & Appliances-Up - 3593 - old (2999)\n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '98444', 'department', 'ONBOARDING', 'duration', '5m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532)\n: 3.9 - [WB] - Changes before website Review by programmer')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 28, 2025 (Monday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-28', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Widespread power outage (Europe blackout)', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '(NO Workday)')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 29, 2025 (Tuesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-29', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Etienne', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98444', 'department', 'ONBOARDING', 'duration', '1h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532)\n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '98724', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - TV Gauthier Electroplus - 3597\n: 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '98239', 'department', 'SPRINT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 5\ncall Etienne on TA - checking the document with examples and updating it'),
    JSON_OBJECT('taskId', '99600', 'department', 'SPRINT', 'duration', '2h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n[DEV] - Product Backlog Item 99599: Exclusive Brand Access Tool\nfinished and deployed')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'call Etienne on\n\tthe imagoTags trigger link for Wilson Bates\n\texclusive brands access tool\n\ttailbasify text fields on mobile')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- April 30, 2025 (Wednesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-04-30', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Etienne/Lino', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Imagotags documentation updated', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '96325', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Mattress Kingdom - 3590\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. WEDN. APRIL 30TH)\nmattresskingdom.ca'),
    JSON_OBJECT('taskId', '98451', 'department', 'ONBOARDING', 'duration', '1h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532)\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. WEDN. APRIL.30TH)'),
    JSON_OBJECT('taskId', '98649', 'department', 'ONBOARDING', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Mansour Furniture & Appliance - 3599\n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '98830', 'department', 'ONBOARDING', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Vern\'s Appliance, Sales, Service & Parts LTD - 3595\n: 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '99603', 'department', 'SPRINT', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify text fields on mobile\nfinished - call Etienne - deployed')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking Chubby\'s which got stuck starting the synchronizer'),
    JSON_OBJECT('content', 'call Lino on Imagotags'),
    JSON_OBJECT('content', 'checking and updating the documentation for ImagoTags')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;