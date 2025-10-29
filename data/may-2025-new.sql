-- Mayo 2025 - Regenerado con reglas actualizadas
-- Aplicando las 7 reglas completas con nueva estructura

-- MAY 01 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-01', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99603', 'department', 'SPRINT', 'duration', '3h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n: [DEV]: Tailbasify text fields on mobile\nfinished - call Etienne - deployed'),
    JSON_OBJECT('taskId', '99600', 'department', 'SPRINT', 'duration', '3h15m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n: [DEV] - Product Backlog Item 99599: Exclusive Brand Access Tool\nfinished and deployed'),
    JSON_OBJECT('taskId', '99660', 'department', 'SUPPORT', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Featured Products displaying collections last')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 02 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-02', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-06 Demos, Retro', 'duration', '3h20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Checking sync stuck', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99600', 'department', 'SPRINT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] - Product Backlog Item 99599: Exclusive Brand Access Tool\nfinished and deployed'),
    JSON_OBJECT('taskId', '98649', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Mansour Furniture & Appliance - 3599\n: 3.9 - [WB] - Changes before website Review by programmer\nmore changes - reinitiate the drop down menu'),
    JSON_OBJECT('taskId', '98831', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Vern\'s Appliance, Sales, Service & Parts LTD - 3595\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. MAY 1ST)'),
    JSON_OBJECT('taskId', '99268', 'department', 'SPRINT', 'duration', '20m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Tailbasify - Badges - FINAL FINAL FINAL Changes\nlast checking')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'check 2692 sync stuck solved - it took too long - 52 batches for a total of 5 hours and 37 minutes'),
    JSON_OBJECT('content', 'checking something with Marie regarding a merchant catalog')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 05 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-05', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-07 Planning & Tasks assignments', 'duration', '3h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99268', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Tailbasify - Badges - FINAL FINAL FINAL Changes\nlast checking'),
    JSON_OBJECT('taskId', '98967', 'department', 'SUPPORT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n: [DEV]: Wilson Bates - Check if we can add a console link to run Imagotags'),
    JSON_OBJECT('taskId', '97522', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Schnell & Prestinger Appliances LLC - 3596\n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '98450', 'department', 'ONBOARDING', 'duration', '1h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532)\n: 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '98824', 'department', 'ONBOARDING', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - Vern\'s Appliance, Sales, Service & Parts LTD - 3595\n: 3.9 - [WB] - Changes before website Review by programmer\nmore changes - main menu color theme')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 06 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-06', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Etienne on TA', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Marie on Calgary Empirum sync', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99259', 'department', 'SPRINT', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Variants - Catalog Title tool\n2nd round of QA'),
    JSON_OBJECT('taskId', '99711', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Lite - Great Sound Audio Video-Up - 3594 - old (1532)\n: Changes After launch by programmer'),
    JSON_OBJECT('taskId', '98526', 'department', 'ONBOARDING', 'duration', '1h25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - FRNKA A/C Sales & Appliances-Up - 3593 - old (2999)\n: 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '98649', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Mansour Furniture & Appliance - 3599\n: 3.9 - [WB] - Changes before website Review by programmer\nmore changes'),
    JSON_OBJECT('taskId', '98724', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - TV Gauthier Electroplus - 3597\n: 5.1 - [RW] - Changes before launch by programmer\nmore changes - ecofrais and bottom extra logo'),
    JSON_OBJECT('taskId', '99783', 'department', 'SPRINT', 'duration', '1h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Fix Scrapers - Canadian Appliance')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking some documentation and evaluation with Etienne regarding TA')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 07 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-07', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Data Protection Essentials', 'duration', '1h15m', 'timeSubmitted', true, 'departmentId', 'it-02', 'description', ''),
    JSON_OBJECT('title', 'General Data Protection Regulation (GDPR) - Annual', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-02', 'description', ''),
    JSON_OBJECT('title', 'Tailbasify pipeline issue', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99783', 'department', 'SPRINT', 'duration', '20m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Fix Scrapers - Canadian Appliance'),
    JSON_OBJECT('taskId', '99780', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Fix Scrapers - Lowes US\ndeploy on production the changes and run the scraper manually\nremember to put back the Interval for Products and Categories'),
    JSON_OBJECT('taskId', '96013', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Calgary Furniture Emporium - 3589\n: 5.1 - [RW] - Changes before launch by programmer\ninvestigating an issue related with brand names renamed and Shopify'),
    JSON_OBJECT('taskId', '99259', 'department', 'SPRINT', 'duration', '10m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Variants - Catalog Title tool\nmore QA - approved')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking and fixing the Tailbasify pipeline unit tests - Lino requriement')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 08 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-08', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99903', 'department', 'SPRINT', 'duration', '5h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Product Creation Tool - Duplicates - Part 1\nstarting working on this'),
    JSON_OBJECT('taskId', '99780', 'department', 'SPRINT', 'duration', '0m', 'timeSubmitted', false, 'status', 'DONE', 'description', ': [DEV] Fix Scrapers - Lowes US'),
    JSON_OBJECT('taskId', '99783', 'department', 'SPRINT', 'duration', '2h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Fix Scrapers - Canadian Appliance')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'checking LowesUS again - and, if it did not work, put back everything')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 09 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-09', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '30m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99785', 'department', 'SPRINT', 'duration', '5h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Catalog - Add images using links'),
    JSON_OBJECT('taskId', '98527', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - FRNKA A/C Sales & Appliances-Up - 3593 - old (2999)\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. MOND. MAY 12TH)')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 12 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-12', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98893', 'department', 'ONBOARDING', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Everett\'s Furniture & Emporium-Up - 3598 - old (3009)\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. MOND. MAY 12TH)'),
    JSON_OBJECT('taskId', '99797', 'department', 'SPRINT', 'duration', '4h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [ANALYSIS] [Analysis] Tailbasify - Warranties/Installations/Related Products at Cart\nshopify theme dev --store handy-appliances-bc.myshopify.com'),
    JSON_OBJECT('taskId', '99903', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Product Creation Tool - Duplicates - Part 1\ncall Lino helping me - how to handle the images on the local for testing')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 13 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-13', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '98725', 'department', 'ONBOARDING', 'duration', '1h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 1 - TV Gauthier Electroplus - 3597\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. TUESD. MAY 13TH)'),
    JSON_OBJECT('taskId', '98681', 'department', 'ONBOARDING', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Karigars Furniture - 3602\n: 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '99903', 'department', 'SPRINT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Product Creation Tool - Duplicates - Part 1\ndeploying on staging for testing - finished - QA sent to Bouthaina'),
    JSON_OBJECT('taskId', '99785', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Catalog - Add images using links'),
    JSON_OBJECT('taskId', '100093', 'department', 'SUPPORT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV]: Crawlers down for Best Buy US and Lowes Us')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 14 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-14', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100093', 'department', 'SUPPORT', 'duration', '3h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV]: Crawlers down for Best Buy US and Lowes Us\n*check if LowesUS is totally stopped and launch it to try the new changes\nmore detailed logs and timeout increased for pricing requests\n*check if BestBuyUS is totally stopped and launch it to try the new changes\nmore detailed logs and testing residential proxy\ncheck if now it start getting more logs\napply the changes to get the 38 number with the new Xpath'),
    JSON_OBJECT('taskId', '100091', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Ashley Collection Issues\ntesting and call Lino'),
    JSON_OBJECT('taskId', '99903', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n: [DEV] Product Creation Tool - Duplicates - Part 1\nchecking Bouthaina comments - doing some minor changes and a new round of testing\napproved - waiting for Etienne to see if he wants this to be deployed'),
    JSON_OBJECT('taskId', '99811', 'department', 'SPRINT', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Automated Pricing - Option to delete pricing\nstarting on this')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 15 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-15', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '15m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100093', 'department', 'SUPPORT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV]: Crawlers down for Best Buy US and Lowes Us\nchecking LowesUs\nworking on a different approach using Selenium'),
    JSON_OBJECT('taskId', '100091', 'department', 'SPRINT', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Ashley Collection Issues\ndoing more tests (Coaster)'),
    JSON_OBJECT('taskId', '99797', 'department', 'SPRINT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n: [ANALYSIS] [Analysis] Tailbasify - Warranties/Installations/Related Products at Cart'),
    JSON_OBJECT('taskId', '99785', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'WRAPPED UP\n: [DEV] Catalog - Add images using links\nchecking and creating the PR and sending the QA to Bouthaina'),
    JSON_OBJECT('taskId', '98655', 'department', 'ONBOARDING', 'duration', '55m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Mansour Furniture & Appliance - 3599\n: 5.1 - [RW] - Changes before launch by programmer\nJackson Furniture (Catnapper) endpoint has been faling since April 2nd with status 500')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 16 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-16', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99780', 'department', 'SPRINT', 'duration', '1h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Fix Scrapers - Lowes US'),
    JSON_OBJECT('taskId', '100093', 'department', 'SUPPORT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV]: Crawlers down for Best Buy US and Lowes Us\nworking on a different approach using Selenium'),
    JSON_OBJECT('taskId', '98655', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Mansour Furniture & Appliance - 3599\n: 5.1 - [RW] - Changes before launch by programmer\nJackson Furniture (Catnapper) endpoint has been faling since April 2nd with status 500\n\\Feeds\\Tailbase.Feeds\\Downloaders\\CatnapperJacksonApiDownloader.cs\nApiRequestOutput = CodeRetryer.Retry(() => httpClient.GetAsync($\"catalog/{DealerId}\")...'),
    JSON_OBJECT('taskId', '100091', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Ashley Collection Issues\napproved'),
    JSON_OBJECT('taskId', '99811', 'department', 'SPRINT', 'duration', '3h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Automated Pricing - Option to delete pricing')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 19 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-19', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Victoria Day - National Patriots Day', 'duration', '7h30m', 'timeSubmitted', true, 'departmentId', 'it-27', 'description', '')
  ),
  'tasks', JSON_ARRAY(),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 20 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-20', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls Etienne, Lino', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99811', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Automated Pricing - Option to delete pricing'),
    JSON_OBJECT('taskId', '98656', 'department', 'ONBOARDING', 'duration', '1h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Mansour Furniture & Appliance - 3599\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. TUESD. MAY 20TH)'),
    JSON_OBJECT('taskId', '100093', 'department', 'SUPPORT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV]: Crawlers down for Best Buy US and Lowes Us\ndeployed on production and test Selenium'),
    JSON_OBJECT('taskId', '98687', 'department', 'ONBOARDING', 'duration', '1h10m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Karigars Furniture - 3602\n: 3.9 - [WB] - Changes before website Review by programmer')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 21 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-21', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '99793', 'department', 'SPRINT', 'duration', '1h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Tempur Promotional Pricing\n1st round & 2nd round - approved'),
    JSON_OBJECT('taskId', '100283', 'department', 'SPRINT', 'duration', '4h50m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Issue with Variants - TA'),
    JSON_OBJECT('taskId', '100093', 'department', 'SUPPORT', 'duration', '50m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV]: Crawlers down for Best Buy US and Lowes Us\ndoing many Selenium tests on production')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 22 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-22', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-07 Demos', 'duration', '3h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Checking 3480 imagotags', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100311', 'department', 'ONBOARDING', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Mansour Furniture & Appliance - 3599\n: Assistance After Launch'),
    JSON_OBJECT('taskId', '100358', 'department', 'SUPPORT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] United Floors - Quote request form for general quote request'),
    JSON_OBJECT('taskId', '98687', 'department', 'ONBOARDING', 'duration', '25m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Karigars Furniture - 3602\n: 3.9 - [WB] - Changes before website Review by programmer\nmore changes')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'http://localhost:8080/en/storelocator#contactusformtrigger')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 23 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-23', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Sprint 2025-08 Planning & Tasks assignments', 'duration', '3h20m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100361', 'department', 'SUPPORT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV]: Paddy\'s Market - Rename Categories'),
    JSON_OBJECT('taskId', '100360', 'department', 'ONBOARDING', 'duration', '1h45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Don\'s Furniture Warehouse Upgrade - 3587 - (old - 1988)\ncall Sonia on Don\'s Furniture - : Changes before going live'),
    JSON_OBJECT('taskId', '100358', 'department', 'SUPPORT', 'duration', '55m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] United Floors - Quote request form for general quote request\nfixing request form bugs')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 26 2025 (MONDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-26', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Calls', 'duration', '50m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100311', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Mansour Furniture & Appliance - 3599\n: Assistance After Launch\nmore changes'),
    JSON_OBJECT('taskId', '99077', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Light - CasaBella Furniture - 3600\n: 5.1 - [RW] - Launched Website & Final Q.A (D.D.MOND MAY 26TH )'),
    JSON_OBJECT('taskId', '100360', 'department', 'ONBOARDING', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Don\'s Furniture Warehouse Upgrade - 3587 - (old - 1988)\n: Changes before going live\nmore changes - call Sonia'),
    JSON_OBJECT('taskId', '99793', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Tempur Promotional Pricing\nnew round of QA - Remove start/end dates for the promotions when the buton is toggle off'),
    JSON_OBJECT('taskId', '98687', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Karigars Furniture - 3602\n: 3.9 - [WB] - Changes before website Review by programmer\nmore and more changes'),
    JSON_OBJECT('taskId', '100107', 'department', 'ONBOARDING', 'duration', '2h20m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 3 - Notre-Dame Home Furnishings-Happy Valley - 3604 - (old - 3054) both are Cantrex 3\n: 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '100358', 'department', 'SUPPORT', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] United Floors - Quote request form for general quote request\nfixing request form bugs')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 27 2025 (TUESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-27', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '10m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Checking TA info we send to David', 'duration', '1h', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100358', 'department', 'SUPPORT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] United Floors - Quote request form for general quote request\nmore issues with the request form - call Sonia'),
    JSON_OBJECT('taskId', '99939', 'department', 'ONBOARDING', 'duration', '1h55m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 2 - Treasure Hunt Furniture - 3603\n: 3.3 - [WB] - Website building initial set-up by programmer'),
    JSON_OBJECT('taskId', '100363', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Native Variants - Provide List of Duplicated Variant Values\napproved'),
    JSON_OBJECT('taskId', '100365', 'department', 'SPRINT', 'duration', '2h40m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Native Variants - Failsafe Variants Config Tool for duplicated variant Values\nstarting working on this')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'getting the requested info by David regarding TA')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 28 2025 (WEDNESDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-28', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100358', 'department', 'SUPPORT', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] United Floors - Quote request form for general quote request\nmore and more issues with the request form'),
    JSON_OBJECT('taskId', '100113', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Cantrex 3 - Notre-Dame Home Furnishings-Happy Valley - 3604 - (old - 3054) both are Cantrex 3\n: 3.9 - [WB] - Changes before website Review by programmer'),
    JSON_OBJECT('taskId', '96014', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Lite - Calgary Furniture Emporium - 3589\n: 5.2 - [RW] - Launched Website & Final Q.A (D.D. THURSD. MAY 29TH)'),
    JSON_OBJECT('taskId', '100425', 'department', 'SUPPORT', 'duration', '55m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Issue with Related Products Germain lariviere'),
    JSON_OBJECT('taskId', '99772', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] TA Appliance - Metafield variants and tags - Part 6\nchecking Epass logic behind isOrphanChild asked by David')
  ),
  'notes', JSON_ARRAY(
    JSON_OBJECT('content', 'there\'s something that I found here... and will send it to you bouthaina later on')
  )
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 29 2025 (THURSDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-29', JSON_OBJECT(
  'meetings', JSON_ARRAY(
    JSON_OBJECT('title', 'Scrum Meeting', 'duration', '5m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', ''),
    JSON_OBJECT('title', 'Call Eitenne', 'duration', '40m', 'timeSubmitted', true, 'departmentId', 'it-21', 'description', '')
  ),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100358', 'department', 'SUPPORT', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] United Floors - Quote request form for general quote request\nmore things - checking the wording limit'),
    JSON_OBJECT('taskId', '100474', 'department', 'SUPPORT', 'duration', '1h35m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV]: United Floors - Product Quote request email update\nwishlist quote request form'),
    JSON_OBJECT('taskId', '100360', 'department', 'ONBOARDING', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', 'NSW V3 Lite - Don\'s Furniture Warehouse Upgrade - 3587 - (old - 1988)\n: Changes before going live\nmore changes - problem with the cross on the map'),
    JSON_OBJECT('taskId', '99077', 'department', 'ONBOARDING', 'duration', '45m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'Tailbasify Light - CasaBella Furniture - 3600\n: 5.1 - [RW] - Launched Website & Final Q.A (D.D.MOND MAY 26TH )'),
    JSON_OBJECT('taskId', '100425', 'department', 'SUPPORT', 'duration', '40m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Issue with Related Products Germain lariviere\nanother round of QA'),
    JSON_OBJECT('taskId', '100365', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Native Variants - Failsafe Variants Config Tool for duplicated variant Values')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;

-- MAY 30 2025 (FRIDAY)
INSERT INTO daily_entries (entry_date, structured_entries, entry_type) VALUES 
('2025-05-30', JSON_OBJECT(
  'meetings', JSON_ARRAY(),
  'tasks', JSON_ARRAY(
    JSON_OBJECT('taskId', '100503', 'department', 'SUPPORT', 'duration', '2h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV]: United Floors - Rewiew widget not working\nissue with the reviews stores widgets'),
    JSON_OBJECT('taskId', '97528', 'department', 'ONBOARDING', 'duration', '1h30m', 'timeSubmitted', true, 'status', 'DONE', 'description', 'V3 Low Ticket Offer - Schnell & Prestinger Appliances LLC - 3596\n: 5.1 - [RW] - Changes before launch by programmer'),
    JSON_OBJECT('taskId', '100370', 'department', 'SPRINT', 'duration', '1h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Message Console - Country Filters'),
    JSON_OBJECT('taskId', '100365', 'department', 'SPRINT', 'duration', '2h', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [DEV] Native Variants - Failsafe Variants Config Tool for duplicated variant Values\ncall Etienne'),
    JSON_OBJECT('taskId', '99793', 'department', 'SPRINT', 'duration', '30m', 'timeSubmitted', true, 'status', 'DONE', 'description', ': [QA] Tempur Promotional Pricing\nquick round of QA - approved')
  ),
  'notes', JSON_ARRAY()
), 'structured')
ON DUPLICATE KEY UPDATE 
structured_entries = VALUES(structured_entries),
entry_type = VALUES(entry_type),
updated_at = CURRENT_TIMESTAMP;