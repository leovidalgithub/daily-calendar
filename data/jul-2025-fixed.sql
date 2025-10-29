-- Julio 2025 - Generado con reglas actualizadas (CORREGIDO)
-- Aplicando las 7 reglas completas con nueva estructura
-- Fuente: data.txt

-- JUL 01 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-01', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Canada Day', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 02 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-02', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-09 Demos', 'duration', '3h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99811', 'department', 'SPRINT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Automated Pricing - Option to delete pricing - finished - QA sent to Lino - deployed & tested'),
    JSON_OBJECT('taskId', '100925', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Tire and Appliance - 3322 - 3.3 - [WB] - Website building initial set-up by programmer - upgrading the template to NSW V3 Lite'),
    JSON_OBJECT('taskId', '101671', 'department', 'SUPPORT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Ashley Feed Optimization'),
    JSON_OBJECT('taskId', '100938', 'department', 'ONBOARDING', 'duration', '10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Tire and Appliance - 3322 - 5.2 - [RW] - Launched Website & Final Q.A (WED. JULY 2ND) - and more and more changes')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 03 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-03', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-10 Planning & Tasks assignments', 'duration', '1h40m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Prévention du harcèlement, de la discrimination et de la violence en milieu de travail', 'duration', '1h5m', 'timeSubmitted', true, 'departmentId', 'it-02', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101297', 'department', 'ONBOARDING', 'duration', '2h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - United Canada Inc. - 3608 - 3.3 - [WB] - Tailbase console initial set-up by programmer'),
    JSON_OBJECT('taskId', '95944', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify All Inclusive - EHR - 2042 - 5.1 - [RW] - Launched Website & Final Q.A (D.D. JULY 3RD)'),
    JSON_OBJECT('taskId', '101195', 'department', 'ONBOARDING', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - Canales Furniture - 3607 - 3.3 - [WB] - Tailbase console initial set-up by programmer')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 04 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-04', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '92587', 'department', 'ONBOARDING', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Dons Furniture Warehouse Upgrade - 3587 - (old - 1988) - 5.2 - [RW] - Launched Website & Final Q.A'),
    JSON_OBJECT('taskId', '92589', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Dons Furniture Warehouse Upgrade - 3587 - (old - 1988) - 5.4 - [WL] - Live Email- DONS FURNITURE WAREHOUSE - UP - NEW V3 LITE (DD: MON. JULY 7)'),
    JSON_OBJECT('taskId', '101639', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Remove Rogue Search Bar from Img-Vid Drawer - deployed & tested'),
    JSON_OBJECT('taskId', '101644', 'department', 'SPRINT', 'duration', '3h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] [Analysis] Germain Icons - Effort - started working on this')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 07 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-07', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101644', 'department', 'SPRINT', 'duration', '4h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [ANALYSIS] [Analysis] Germain Icons - Effort'),
    JSON_OBJECT('taskId', '84150', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify All Inclusive - Geniers Appliances - 2180 - 5.1 - [RW] - Launched Website & Final Q.A'),
    JSON_OBJECT('taskId', '100979', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Ideal Furniture Ardmore -3609 - 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '101638', 'department', 'SPRINT', 'duration', '25m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbadgify - Update with new icons - started working on this')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 08 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-08', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101638', 'department', 'SPRINT', 'duration', '4h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbadgify - Update with new icons - finished working on this'),
    JSON_OBJECT('taskId', '101837', 'department', 'SUPPORT', 'duration', '2h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Collections with AshleyAPI not pricing correctly while using sum of the products')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 09 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-09', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101638', 'department', 'SPRINT', 'duration', '5h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbadgify - Update with new icons - finished working on this - update an Alessandro badge'),
    JSON_OBJECT('taskId', '101837', 'department', 'SUPPORT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Collections with AshleyAPI not pricing correctly while using sum of the products - more QA - approved'),
    JSON_OBJECT('taskId', '101488', 'department', 'SPRINT', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Analyze/Fix Alerts')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 10 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-10', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101488', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Analyze/Fix Alerts'),
    JSON_OBJECT('taskId', '101890', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Fix Errors with Duplicated Variants - starting working on this'),
    JSON_OBJECT('taskId', '100642', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - Palacio Furniture - 3605 - 3.4 - [WB] - Catalog Sync'),
    JSON_OBJECT('taskId', '101646', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Shopify Hub - POC')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 11 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-11', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '45m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Lino', 'duration', '50m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101890', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Fix Errors with Duplicated Variants'),
    JSON_OBJECT('taskId', '101488', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Analyze/Fix Alerts - finished working on it (only Feeds)'),
    JSON_OBJECT('taskId', '101646', 'department', 'SPRINT', 'duration', '1h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Shopify Hub - POC')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'call Lino on Event Reactor Alerts')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 14 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-14', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101890', 'department', 'SPRINT', 'duration', '1h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Tailbasify - Fix Errors with Duplicated Variants - deployed'),
    JSON_OBJECT('taskId', '101924', 'department', 'SUPPORT', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Calgary Furniture Emporium - Brand Name Showing On Website'),
    JSON_OBJECT('taskId', '101646', 'department', 'SPRINT', 'duration', '4h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Shopify Hub - POC')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 15 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-15', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Lino, Etienne', 'duration', '1h5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Prévention de la discrimination et de la violence [Canada]', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-02', 'description', ''),
    JSON_OBJECT('title', 'Tailbasify integration with Marie Clarie', 'duration', '45m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100119', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 3 - Notre-Dame Home Furnishings-Happy Valley - 3604 - (old - 3054) both are Cantrex 3 - 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '101631', 'department', 'SPRINT', 'duration', '1h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Catalog API Update - approved'),
    JSON_OBJECT('taskId', '100991', 'department', 'ONBOARDING', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Ideal Furniture Ardmore -3609 - 5.1 - [RW] - Changes before launch by programmer')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 16 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-16', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Day off (vacation)', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 17 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-17', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Day off (vacation)', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 18 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-18', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '84223', 'department', 'SPRINT', 'duration', '3h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tracktail - Block access for inactive merchants - Part 2'),
    JSON_OBJECT('taskId', '102246', 'department', 'SPRINT', 'duration', '3h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Analyze Logs related to Duplicated Variants & Fix - adding more details to the logs & deploy')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 21 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-21', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-10 Demos', 'duration', '2h30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101488', 'department', 'SPRINT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Analyze/Fix Alerts - checking FOA --> works well now - checking Catnapper logs - sent a request to David for contact Catnapper support'),
    JSON_OBJECT('taskId', '84223', 'department', 'SPRINT', 'duration', '3h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Tracktail - Block access for inactive merchants - Part 2')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 22 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-22', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-11 Planning & Tasks assignments', 'duration', '2h15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98694', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Karigars Furniture - 3602 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. JULY 24TH)'),
    JSON_OBJECT('taskId', '102247', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Find & Fix Issues with Reports - working on Product & Collection Reports'),
    JSON_OBJECT('taskId', '84223', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tracktail - Block access for inactive merchants - Part 2 - switching tracktail users table suggested by David'),
    JSON_OBJECT('taskId', '101196', 'department', 'ONBOARDING', 'duration', '1h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - Canales Furniture - 3607 - 3.4 - [WB] - Catalog Sync - CANALES FURNITURE (D.D. TUESD. JULY 29TH) - installing the Tailbasify Blocks App')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'monitoring logs for Duplicate variant to be delete...')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 23 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-23', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Meeting Pierre-luc on Vercel & Azure', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98694', 'department', 'ONBOARDING', 'duration', '35m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Karigars Furniture - 3602 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. JULY 24TH) - commit changes to the repo'),
    JSON_OBJECT('taskId', '102247', 'department', 'SPRINT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Find & Fix Issues with Reports - checking more issues'),
    JSON_OBJECT('taskId', '102249', 'department', 'SPRINT', 'duration', '4h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Feed Quantities and Price Qualifier - working on items per package')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'monitoring logs for Duplicate variant to be delete...')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 24 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-24', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100119', 'department', 'ONBOARDING', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 3 - Notre-Dame Home Furnishings-Happy Valley - 3604 - (old - 3054) both are Cantrex 3 - 5.1 - [RW] - Changes before launch by programmer - checking request about client emails backup'),
    JSON_OBJECT('taskId', '102247', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Tailbasify - Find & Fix Issues with Reports - deployed'),
    JSON_OBJECT('taskId', '101298', 'department', 'ONBOARDING', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - United Canada Inc. - 3608 - 3.4 - [WB] - Catalog Sync - UNITED CANADA INC. (D.D. WEDNES. JULY 30TH)'),
    JSON_OBJECT('taskId', '102249', 'department', 'SPRINT', 'duration', '3h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Feed Quantities and Price Qualifier - finished - call Etienne')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 25 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-25', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Checking 1202 stuck', 'duration', '1h35m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'call Etienne on Tailbasify Unleashed', 'duration', '35m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102246', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Analyze Logs related to Duplicated Variants & Fix - Checking logs - finding a possible issue - A new log was added --> new variants added only for merchant 3509, trying to understand why those duplicated variants are being added - Remember to check the day before the logs of Duplicated variant to delete...'),
    JSON_OBJECT('taskId', '102552', 'department', 'SPRINT', 'duration', '3h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Analyze / Fix - Feeds Issue - Instances Limit Reached - finish working on this')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'Can the legacy Imagotags process (XML to FTP) use the tailbasify option so the products URL are correct?')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 28 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-28', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102552', 'department', 'SPRINT', 'duration', '1h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Analyze / Fix - Feeds Issue - Instances Limit Reached - finish working on this'),
    JSON_OBJECT('taskId', '98694', 'department', 'ONBOARDING', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Karigars Furniture - 3602 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. JULY 24TH) - problem with DNSSEC - finishing with the launch'),
    JSON_OBJECT('taskId', '102247', 'department', 'SPRINT', 'duration', '1h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Find & Fix Issues with Reports - checked something regarding find & fix issues with reports on tailbasify'),
    JSON_OBJECT('taskId', '102246', 'department', 'SPRINT', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Analyze Logs related to Duplicated Variants & Fix - checking the logs'),
    JSON_OBJECT('taskId', '102624', 'department', 'SPRINT', 'duration', '2h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Tailbasify - Review Performance - started working on this')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'prepared the Tailbasify Unleashed QA for Lino')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 29 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-29', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102249', 'department', 'SPRINT', 'duration', '4h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Feed Quantities and Price Qualifier - checking Linos comments'),
    JSON_OBJECT('taskId', '102239', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Tailbasify - Check/Fix Associated Products Metafields')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 30 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-30', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting (Accent Meubles)', 'duration', '1h30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102711', 'department', 'SPRINT', 'duration', '4h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] How to make a Shopify Public UNLISTED App - starting on this'),
    JSON_OBJECT('taskId', '102252', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify Unleashed - Warranties and Installations - started on this')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUL 31 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-07-31', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Unit tests issue check', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Accent Meubles starting project meeting', 'duration', '1h30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '102711', 'department', 'SPRINT', 'duration', '2h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] How to make a Shopify Public UNLISTED App - Tailbasify Icons App - ready for revision - Public UNLISTED App - waiting for Shopify response'),
    JSON_OBJECT('taskId', '100992', 'department', 'ONBOARDING', 'duration', '1h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Ideal Furniture Ardmore -3609 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. MONDAY AUG. 4TH)'),
    JSON_OBJECT('taskId', '102729', 'department', 'ONBOARDING', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532) - GSAV-Content Pages')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking duplicated Variants'),
    JSON_OBJECT('content', 'quick unit test check on tailbasify')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;