-- Junio 2025 - Generado con reglas actualizadas (CORREGIDO)
-- Aplicando las 7 reglas completas con nueva estructura
-- Fuente: data.txt

-- JUN 02 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-02', JSON_OBJECT(
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

-- JUN 03 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-03', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '92464', 'department', 'ONBOARDING', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Standard - Furniture Land - 3580 - (old - 2682) - 5.1 - [RW] - Launched Website & Final Q.A (D.D. TUESD. JUNE 3RD)'),
    JSON_OBJECT('taskId', '100113', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 3 - Notre-Dame Home Furnishings-Happy Valley - 3604 - (old - 3054) both are Cantrex 3 - 3.9 - [WB] - Changes before website Review by programmer - more changes - stores images and Elements V2 issue'),
    JSON_OBJECT('taskId', '100365', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Native Variants - Failsafe Variants Config Tool for duplicated variant Values - closing case and sending QA to Bouthaina'),
    JSON_OBJECT('taskId', '100374', 'department', 'SPRINT', 'duration', '3h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Fix Variants Config Tools when updating rules')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 04 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-04', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100641', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - Palacio Furniture - 3605 - 3.3 - [WB] - Tailbase console initial set-up by programmer - I finally worked on it Jun 26th 2025'),
    JSON_OBJECT('taskId', '98693', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Karigars Furniture - 3602 - 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '100374', 'department', 'SPRINT', 'duration', '4h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Fix Variants Config Tools when updating rules - call Sarah - working on it')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 05 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-05', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Lino, Etienne', 'duration', '', 'timeSubmitted', false, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100374', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Fix Variants Configurator Tool when updating rules'),
    JSON_OBJECT('taskId', '100365', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Native Variants - Failsafe Variants Config Tool for duplicated variant Values - checking Bouthaina comment - working on Split & Approve and Merge & Approve options'),
    JSON_OBJECT('taskId', '96014', 'department', 'ONBOARDING', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite - Calgary Furniture Emporium - 3589 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. MAY 29TH) - calgaryfurnitureemporium.ca - waiting for them for the NS - problems with the propagation'),
    JSON_OBJECT('taskId', '100722', 'department', 'SUPPORT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Ameublements Barbeau & Garceau - 3536 - [DEV] Ameublements Barbeau & Garceau - Sort Order Adjustment Request')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'stop a couple of syncs asked by Lino')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 06 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-06', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100365', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Native Variants - Failsafe Variants Config Tool for duplicated variant Values - including Split & Approve / Merge to & Approve / Merge & Approve Row - sending the QA back to B2'),
    JSON_OBJECT('taskId', '99772', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 6 - Etienne has been sending me some comments from TA so I need to look at it later on'),
    JSON_OBJECT('taskId', '92464', 'department', 'ONBOARDING', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Standard - Furniture Land - 3580 - (old - 2682) - 5.1 - [RW] - Launched Website & Final Q.A (D.D. TUESD. JUNE 3RD)'),
    JSON_OBJECT('taskId', '100372', 'department', 'SPRINT', 'duration', '4h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - User videos on product pages - started working on this - call Etienne')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 09 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-09', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100365', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Native Variants - Failsafe Variants Config Tool for duplicated variant Values - deployed'),
    JSON_OBJECT('taskId', '100372', 'department', 'SPRINT', 'duration', '4h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - User videos on product pages'),
    JSON_OBJECT('taskId', '98693', 'department', 'ONBOARDING', 'duration', '1h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Karigars Furniture - 3602 - 5.1 - [RW] - Changes before launch by programmer - more changes')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 10 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-10', JSON_OBJECT(
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

-- JUN 11 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-11', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-08 Demos', 'duration', '3h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '96014', 'department', 'ONBOARDING', 'duration', '1h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite - Calgary Furniture Emporium - 3589 - 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. MAY 29TH) - issue with Hostinger'),
    JSON_OBJECT('taskId', '100372', 'department', 'SPRINT', 'duration', '3h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - User videos on product pages')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 12 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-12', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-09 Planning & Tasks assignments', 'duration', '3h5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100372', 'department', 'SPRINT', 'duration', '2h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - User videos on product pages - continue working on this'),
    JSON_OBJECT('taskId', '100575', 'department', 'ONBOARDING', 'duration', '1h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite - Salt & Sand Home Furnishings - 3606 - 3.3 - [WB] - Tailbase console initial set-up by programmer - issue adding store info')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 13 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-13', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100372', 'department', 'SPRINT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - User videos on product pages'),
    JSON_OBJECT('taskId', '100997', 'department', 'SPRINT', 'duration', '4h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - User videos on product pages - Part 2 - finish - QA sent to Bouthaina'),
    JSON_OBJECT('taskId', '100576', 'department', 'ONBOARDING', 'duration', '1h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite - Salt & Sand Home Furnishings - 3606 - 3.4 - [WB] - Catalog Sync')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 16 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-16', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99268', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - FINAL FINAL FINAL Changes - meeting with Alessandro at 11 regarding the Tailbasify Badges App'),
    JSON_OBJECT('taskId', '99268', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - FINAL FINAL FINAL Changes - upload the code to Shopify Demo site for Alessandro'),
    JSON_OBJECT('taskId', '100375', 'department', 'SPRINT', 'duration', '4h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [ANALYSIS] Shopify Hub - Landing Page builder options - CF')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 17 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-17', JSON_OBJECT(
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

-- JUN 18 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-18', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Call Lino', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100375', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [ANALYSIS] Shopify Hub - Landing Page builder options - CF'),
    JSON_OBJECT('taskId', '98693', 'department', 'ONBOARDING', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Karigars Furniture - 3602 - 5.1 - [RW] - Changes before launch by programmer - removing model numbers from everywhere'),
    JSON_OBJECT('taskId', '101086', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Dons Furniture Warehouse Upgrade - 3587 - (old - 1988) - Newsletter subscription confirmation email - evaluating a newsletter confirmation email to the client'),
    JSON_OBJECT('taskId', '100963', 'department', 'SPRINT', 'duration', '1h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 7 - updating the TA label options'),
    JSON_OBJECT('taskId', '101042', 'department', 'SPRINT', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] Tailbasify - CSS Issue in Details Page - call Lino on warehouse deployment'),
    JSON_OBJECT('taskId', '100997', 'department', 'SPRINT', 'duration', '1h5m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - User videos on product pages - Part 2 - checking Bouthaina comments')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 19 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-19', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'AI and Data Protection', 'duration', '20m', 'timeSubmitted', true, 'departmentId', 'it-02', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100997', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - User videos on product pages - Part 2 - fixing sticky issue and video style for tablets'),
    JSON_OBJECT('taskId', '101170', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - Fix Issue Details Page'),
    JSON_OBJECT('taskId', '100377', 'department', 'SPRINT', 'duration', '2h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[ANALYSIS] Germain Icons')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'COURSE done - AI and Data Protection')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 20 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-20', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Etienne, Lino', 'duration', '1h15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100997', 'department', 'SPRINT', 'duration', '2h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - User videos on product pages - Part 2 - checking more Bouthaina comments and working on it'),
    JSON_OBJECT('taskId', '100377', 'department', 'SPRINT', 'duration', '3h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [ANALYSIS] Germain Icons')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 23 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-23', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100997', 'department', 'SPRINT', 'duration', '3h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 - User videos on product pages - Part 2 - looking into the tailbasify issue regarding v3 videos case - solved and deployed on both v2 & v1'),
    JSON_OBJECT('taskId', '97529', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Schnell & Prestinger Appliances LLC - 3596 - 5.2 - [RW] - Launched Website & Final Q.A (MOND. JUNE 23RD)'),
    JSON_OBJECT('taskId', '100641', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - Palacio Furniture - 3605 - 3.3 - [WB] - Tailbase console initial set-up by programmer'),
    JSON_OBJECT('taskId', '101195', 'department', 'ONBOARDING', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite (INTEGRATION) - Canales Furniture - 3607 - 3.3 - [WB] - Tailbase console initial set-up by programmer - doing the first steps')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 24 2025 (TUESDAY) - Quebec Holiday
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-24', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Quebec Holiday', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 25 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-25', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100997', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] V3 - User videos on product pages - Part 2 - looking into the tailbasify issue regarding v3 videos case - solved and deployed on both v2 & v1'),
    JSON_OBJECT('taskId', '101006', 'department', 'SPRINT', 'duration', '3h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP - [DEV] Image Links - Duplication error'),
    JSON_OBJECT('taskId', '99811', 'department', 'SPRINT', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Automated Pricing - Option to delete pricing')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 26 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-26', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Bouthaina, Lino', 'duration', '1h10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99811', 'department', 'SPRINT', 'duration', '4h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Automated Pricing - Option to delete pricing - finished - QA sent to Lino'),
    JSON_OBJECT('taskId', '101459', 'department', 'SUPPORT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Merlins TV - Automated Pricing Issue - approved')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 27 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-27', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Alessandro metting on Tailbasify Badges App', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99711', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532) - Changes After launch by programmer - Our Process CP layout building'),
    JSON_OBJECT('taskId', '101541', 'department', 'SUPPORT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Texas Furniture & Appliance - Ashley Price Issue - Ashley Feed pricing bug?'),
    JSON_OBJECT('taskId', '100938', 'department', 'ONBOARDING', 'duration', '2h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Tire and Appliance - 3322 - 5.2 - [RW] - Launched Website & Final Q.A (WED. JULY 2ND) - fix the navigation bar as of Version 3 - Brands - Clearance to the right - make all hover effects to color red')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- JUN 30 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-06-30', JSON_OBJECT(
  'meetings', JSON_ARRAY(),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '101541', 'department', 'SUPPORT', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV]: Texas Furniture & Appliance - Ashley Price Issue - Ashley Feed pricing bug?'),
    JSON_OBJECT('taskId', '99711', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532) - Changes After launch by programmer - another CP to build - Home Automation CP layout building'),
    JSON_OBJECT('taskId', '95944', 'department', 'ONBOARDING', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify All Inclusive - EHR - 2042 - 5.1 - [RW] - Launched Website & Final Q.A (D.D. JULY 3RD) - looking at this case for first time and giving a response'),
    JSON_OBJECT('taskId', '84150', 'department', 'ONBOARDING', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify All Inclusive - Geniers Appliances - 2180 - 5.1 - [RW] - Launched Website & Final Q.A - checking this before launch'),
    JSON_OBJECT('taskId', '100938', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Tire and Appliance - 3322 - 5.2 - [RW] - Launched Website & Final Q.A (WED. JULY 2ND) - more changes before going live'),
    JSON_OBJECT('taskId', '100925', 'department', 'ONBOARDING', 'duration', '1h5m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Southern Tire and Appliance - 3322 - 3.3 - [WB] - Website building initial set-up by programmer - upgrading the template to NSW V3 Lite')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;