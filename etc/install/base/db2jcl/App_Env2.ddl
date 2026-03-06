--------------------------------------
--Fetch DDL - DB:ADB171
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  CREATE DATABASE ADB171
    BUFFERPOOL BP0
    INDEXBP    BP0
    CCSID      EBCDIC
    STOGROUP   SYSDEFLT;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TS:ADB171.ATS171
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  CREATE TABLESPACE ATS171
    IN ADB171
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 5 FOR UPDATE 0
    GBPCACHE CHANGED
    TRACKMOD YES
    MAXPARTITIONS 254
    LOGGED
    DSSIZE 4 G
    SEGSIZE 32
    BUFFERPOOL BP0
    LOCKSIZE ANY
    LOCKMAX SYSTEM
    CLOSE YES
    COMPRESS NO
    CCSID      EBCDIC
    DEFINE YES
    MAXROWS 255
    INSERT ALGORITHM 0;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TB:SC1171.ATB171
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  SET CURRENT SCHEMA='SC1171';
  CREATE TABLE ATB171
     (COL1                 CHAR(2) FOR SBCS DATA WITH DEFAULT NULL,
      COL2                 VARCHAR(36) FOR SBCS DATA
        WITH DEFAULT NULL,
      MASK_COLUMN          DECIMAL(11, 0) WITH DEFAULT NULL,
      COL3                 VARCHAR(36) FOR SBCS DATA
        WITH DEFAULT NULL)
    IN ADB171.ATS171
    PARTITION BY SIZE
    AUDIT NONE
    DATA CAPTURE NONE
    CCSID      EBCDIC
    NOT VOLATILE
    APPEND NO  ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:SC1171.AIX171
--------------------------------------
  SET CURRENT SQLID='SC1171';
  CREATE INDEX SC1171.AIX171
    ON SC1171.ATB171
     (COL2                  ASC)
    NOT PADDED
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE YES
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - DB:ADB172
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  CREATE DATABASE ADB172
    BUFFERPOOL BP0
    INDEXBP    BP0
    CCSID      EBCDIC
    STOGROUP   SYSDEFLT;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TS:ADB172.ATS172
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  CREATE TABLESPACE ATS172
    IN ADB172
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 5 FOR UPDATE 0
    GBPCACHE CHANGED
    TRACKMOD YES
    MAXPARTITIONS 254
    LOGGED
    DSSIZE 4 G
    SEGSIZE 32
    BUFFERPOOL BP0
    LOCKSIZE ANY
    LOCKMAX SYSTEM
    CLOSE YES
    COMPRESS NO
    CCSID      EBCDIC
    DEFINE YES
    MAXROWS 255
    INSERT ALGORITHM 0;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TB:SC1172.ATB172
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  SET CURRENT SCHEMA='SC1172';
  CREATE TABLE ATB172
     (COL1                 CHAR(2) FOR SBCS DATA WITH DEFAULT NULL,
      COL2                 VARCHAR(36) FOR SBCS DATA
        WITH DEFAULT NULL,
      MASK_COLUMN          DECIMAL(11, 0) WITH DEFAULT NULL,
      COL3                 VARCHAR(36) FOR SBCS DATA
        WITH DEFAULT NULL)
    IN ADB172.ATS172
    PARTITION BY SIZE
    AUDIT NONE
    DATA CAPTURE NONE
    CCSID      EBCDIC
    NOT VOLATILE
    APPEND NO  ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:SC1172.AIX172
--------------------------------------
  SET CURRENT SQLID='SC1172';
  CREATE INDEX SC1172.AIX172
    ON SC1172.ATB172
     (COL2                  ASC)
    NOT PADDED
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE YES
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

