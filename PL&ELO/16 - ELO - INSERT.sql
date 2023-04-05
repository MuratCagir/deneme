﻿INSERT INTO VODAFONE.ELO_TABLES
(
  NAME,         
  DB_LINK,      
  SOURCE,       
  TARGET,       
  FILTER,       
  SOURCE_HINT,  
  TARGET_HINT,  
  DELTA_COLUMN, 
  LAST_DELTA,
  EXCLUDED,
  DROP_CREATE,
  CREATE_OPTIONS,
  ANALYZE
)VALUES(
  'STG_MIND.BILLING_PERIODS',   -- unique name for extraction
  'MINDB',                 -- db_link 
  'MINDBILL.BILLING_PERIODS',   -- source
  'STG_MIND.TMP_BILLING_PERIODS',  -- target
  null,                          -- filter
  'parallel(16)',                -- source_hint
  'append nologging',            -- target_hint
  null,                          -- delta_column
  null,                          -- last_delta
  0,                             -- excluded
  0,                             -- drop_create
  null,                          -- create_options
  1                              -- analyze
    );
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','TRUNC(SYSDATE)-1/24','STG_DATE',0);
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','NULL','STG_HOUR',0);
    
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','ID','ID',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','ACCOUNTID','ACCOUNTID',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','FROMDATE','FROMDATE',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','TODATE','TODATE',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','CURRENT_USAGE_SEGMENT_ID','CURRENT_USAGE_SEGMENT_ID',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','INVID','INVID',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','PRORATE','PRORATE',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','PRORATE_DATE','PRORATE_DATE',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','PERIOD_NO_OF_DAYS','PERIOD_NO_OF_DAYS',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','USED_BY_CDR','USED_BY_CDR',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','DRAFT_INVID','DRAFT_INVID',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','DAYS_IN_FULL_PERIOD','DAYS_IN_FULL_PERIOD',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','BC_FREQUENCY','BC_FREQUENCY',0);  
        
INSERT INTO VODAFONE.ELO_COLUMNS
(NAME,SOURCE_COL,TARGET_COL,EXCLUDED)
VALUES
('STG_MIND.BILLING_PERIODS','BC_BASEUNIT','BC_BASEUNIT',0);
        
commit;