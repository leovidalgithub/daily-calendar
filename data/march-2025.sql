-- MARCH 2025 Data Insert Script - REGLAS APLICADAS CORRECTAMENTE
-- Generated from SCRUM.txt data using all parsing rules
-- Database structure: entry_date, structured_entries, entry_type
-- JSON structure with meetings, tasks, notes arrays

-- March 03, 2025 (Monday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-03', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Etienne', 'duration', '40m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Red floods alert in Valencia Province, Spain', 'duration', '4h10m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '(NO Workday)')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '96740', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] V3 Adjustments - Bugs Functionality\ninvestigating about something that Bouthaina found - I think I found a workaround and now\nshe will look at it'),
    JSON_OBJECT('taskId', '96751', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Tailbasify - Config to leave inventory untouched\nanother (4th) round of QA'),
    JSON_OBJECT('taskId', '97133', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] GraphQL API - Update Deprecated Mutations V1')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 04, 2025 (Tuesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-04', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Red floods alert in Valencia Province, Spain', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '(NO Workday)')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 05, 2025 (Wednesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-05', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Red floods alert in Valencia Province, Spain', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '(NO Workday)')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 06, 2025 (Thursday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-06', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Red floods alert in Valencia Province, Spain', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '(NO Workday)')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 07, 2025 (Friday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-07', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-03 Demos, Retro', 'duration', '3h20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Sonia on special requirement', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '96007', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Calgary Furniture Emporium - 3589\n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '95937', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify All Inclusive - EHR - 2042\n: 4.3 - [RW] - After Review Modification if needed'),
    JSON_OBJECT('taskId', '96739', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] V3 Adjustments - V3 Listing Page\nQA and sent some comments to Bouthaina'),
    JSON_OBJECT('taskId', '96268', 'department', 'ONBOARDING', 'duration', '10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite - Orlando Furniture Expo - 3227\n: 3.4 - [WB] - Catalog Sync'),
    JSON_OBJECT('taskId', '96318', 'department', 'ONBOARDING', 'duration', '0m', 'timeSubmitted', false, 'status', 'DONE', 'description', 'Cantrex 1 - Mattress Kingdom - 3590\n: 3.9 - [WB] - Changes before website Review by programmer')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', '** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** \nTA remind Etienne about Tags Rules\n** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **'),
    JSON_OBJECT('content', 'call Sonia about special requierment - restaurant landing page - 2 different domains')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 10, 2025 (Monday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-10', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-04 Planning', 'duration', '3h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '96268', 'department', 'ONBOARDING', 'duration', '1h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite - Orlando Furniture Expo - 3227\n: 3.4 - [WB] - Catalog Sync'),
    JSON_OBJECT('taskId', '96318', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Mattress Kingdom - 3590\n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '97454', 'department', 'ONBOARDING', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Standard - Tannehill Furniture Up - 3591 - old (2877) \n: 3.3 - [WB] - Website building initial set-up by programmer (**RUSH PLS**)'),
    JSON_OBJECT('taskId', '97535', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': Need estimate for  Restaurant page and launch')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 11, 2025 (Tuesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-11', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '97535', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': Need estimate for  Restaurant page and launch'),
    JSON_OBJECT('taskId', '90934', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 3 - True Style Furniture Plus-UP - 3570 - (old - 848)\n: 5.1 - [RW] - Changes before launch by programmer\nmore changes - storelocator toll-free number, and Popular Cats Plus removing retangle'),
    JSON_OBJECT('taskId', '97564', 'department', 'SPRINT', 'duration', '3h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 4\nincluding a new child product type and redoing all the tag rules'),
    JSON_OBJECT('taskId', '97565', 'department', 'SPRINT', 'duration', '1h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[QA] Tailbasify - Config to leave inventory untouched - Part 2\nnew complete round of QA')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 12, 2025 (Wednesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-12', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Lino', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '90934', 'department', 'ONBOARDING', 'duration', '20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 3 - True Style Furniture Plus-UP - 3570 - (old - 848)\n: 5.1 - [RW] - Changes before launch by programmer\nmore changes'),
    JSON_OBJECT('taskId', '97588', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] 2 - V3 Adjustments Changes - Merge and Deploy\nmerged my 2 cases into a common branch, create a PR and sent it to Bouthaina'),
    JSON_OBJECT('taskId', '97564', 'department', 'SPRINT', 'duration', '3h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 4\nchecking something that Lino found...\ncall Lino'),
    JSON_OBJECT('taskId', '94559', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[Unit Test] TA Appliance - Metafield variants and tags')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 13, 2025 (Thursday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-13', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '94559', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[Unit Test] TA Appliance - Metafield variants and tags\nfinish working on the unit tests'),
    JSON_OBJECT('taskId', '97564', 'department', 'SPRINT', 'duration', '1h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 4\n1956 & 1175 / running a complete update to ensure everything is going well'),
    JSON_OBJECT('taskId', '97588', 'department', 'SPRINT', 'duration', '4h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] 2 - V3 Adjustments Changes - Merge and Deploy\nchecking all changes together and different merchants\ncall Bouthaina - deploy...')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'filling out the file required by Marc-Andre about technologies and send it back to him')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 14, 2025 (Friday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-14', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '97588', 'department', 'SPRINT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] 2 - V3 Adjustments Changes - Merge and Deploy\nfixing an issue related to the main menu - also, adding missing components\npreparing the demo for Alessandro'),
    JSON_OBJECT('taskId', '93054', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Matelas de Rêve - 3578\n: 5.2 - [RW] - Launched Website & Final Q.A -(D.D. MOND.. MARCH 17TH)\npreparing everything for next Monday launch - case sent to David'),
    JSON_OBJECT('taskId', '90935', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 3 - True Style Furniture Plus-UP - 3570 - (old - 848)\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. MOND. MARCH 17TH)\npreparing everything for next Monday launch - case sent to Lino'),
    JSON_OBJECT('taskId', '97563', 'department', 'SPRINT', 'duration', '4h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] GraphQL API - Update Deprecated Mutations V1 - Part 2\nimplementing productVariantsBulkUpdate mutation')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 17, 2025 (Monday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-17', JSON_OBJECT(
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

-- March 18, 2025 (Tuesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-18', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '97588', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] 2 - V3 Adjustments Changes - Merge and Deploy\nchecking some minor changes Bouthaina did on the V3 Adjustments case,\nand then sending the demo to Alessandro'),
    JSON_OBJECT('taskId', '90612', 'department', 'ONBOARDING', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Seale\'s Furniture & Appliances - 3566\n: 5.1 - [RW] - Changes before launch by programmer\nmore changes'),
    JSON_OBJECT('taskId', '97460', 'department', 'ONBOARDING', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Standard - Tannehill Furniture Up - 3591 - old (2877) \n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '97563', 'department', 'SPRINT', 'duration', '2h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] GraphQL API - Update Deprecated Mutations V1 - Part 2'),
    JSON_OBJECT('taskId', '97958', 'department', 'ONBOARDING', 'duration', '1h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite - Orlando Furniture Expo - 3227\n: Changes/Modifications before review -ORLANDO FURNITURE EXCHANGE\nsome issues found related to variants - call Lino analyzing this')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 19, 2025 (Wednesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-19', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Etienne', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '97958', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite - Orlando Furniture Expo - 3227\n: Changes/Modifications before review -ORLANDO FURNITURE EXCHANGE'),
    JSON_OBJECT('taskId', '97971', 'department', 'SPRINT', 'duration', '4h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Duplicated Variants Issue on v2\nwokring on - QA sent to Lino - deployed'),
    JSON_OBJECT('taskId', '97564', 'department', 'SPRINT', 'duration', '55m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 4\ncall Etienne checking everything\ncreating a guide document with more representative examples'),
    JSON_OBJECT('taskId', '94748', 'department', 'SPRINT', 'duration', '0m', 'timeSubmitted', false, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - Part 4\nstarting again on this')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 20, 2025 (Thursday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-20', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Day off (vacation)', 'duration', '3h', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '97563', 'department', 'SPRINT', 'duration', '2h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n[DEV] GraphQL API - Update Deprecated Mutations V1 - Part 2\nchecking Lino comments and doing a complete tests for 1956 & 1175\ndeployed'),
    JSON_OBJECT('taskId', '97564', 'department', 'SPRINT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] TA Appliance - Metafield variants and tags - Part 4')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 21, 2025 (Friday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-21', JSON_OBJECT(
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

-- March 24, 2025 (Monday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-24', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '97771', 'department', 'ONBOARDING', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Best Buy Home Furniture-Up - 3592 - old (3313)\n: 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '94748', 'department', 'SPRINT', 'duration', '5h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - Part 4')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking something quick with Etienne about TA Native Variants')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 25, 2025 (Tuesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-25', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-04 Demos, Retro', 'duration', '3h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '94748', 'department', 'SPRINT', 'duration', '4h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] Tailbasify - Badges - Part 4'),
    JSON_OBJECT('taskId', '95937', 'department', 'ONBOARDING', 'duration', '10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify All Inclusive - EHR - 2042\n: 4.3 - [RW] - After Review Modification if needed\nmore changes'),
    JSON_OBJECT('taskId', '97466', 'department', 'ONBOARDING', 'duration', '0m', 'timeSubmitted', false, 'status', 'DONE', 'description', 'NSW V3 Standard - Tannehill Furniture Up - 3591 - old (2877)\n: 5.1 - [RW] - Changes before launch by programmer - TANNEHILL FURNITURE-UP-NSW')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 26, 2025 (Wednesday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-26', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-05 Planning', 'duration', '3h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '97466', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Standard - Tannehill Furniture Up - 3591 - old (2877)\n: 5.1 - [RW] - Changes before launch by programmer - TANNEHILL FURNITURE-UP-NSW'),
    JSON_OBJECT('taskId', '97467', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Standard - Tannehill Furniture Up - 3591 - old (2877)\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. WED. MARCH 26TH)')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 27, 2025 (Thursday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-27', JSON_OBJECT(
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

-- March 28, 2025 (Friday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-28', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Lino/Alessandro', 'duration', '1h15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '97777', 'department', 'ONBOARDING', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Best Buy Home Furniture-Up - 3592 - old (3313)\n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '98311', 'department', 'SPRINT', 'duration', '4h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] ProductUpdate.input - Update deadline: Jul 1, 2025 - V1 - deprecated mutation')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'meeting with Alessandro at 11AM')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- March 31, 2025 (Monday)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-03-31', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '95555', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Supreme Furniture & Mattress - 3588\n: 5.2 - [RW] - Launched Website & Final Q.A -(D.D. TUESD. APRIL 1ST)'),
    JSON_OBJECT('taskId', '98311', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n[DEV] ProductUpdate.input - Update deadline: Jul 1, 2025 - V1 - deprecated mutation\ndeployed - some calls Lino\nreinstalling Apps for dev and production - adding publication ids\ninstruccions recap'),
    JSON_OBJECT('taskId', '98214', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEPLOYMENT] V3 Changes - Merge and Deploy Production'),
    JSON_OBJECT('taskId', '97588', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', '[DEV] 2 - V3 Changes - Merge and Deploy')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;