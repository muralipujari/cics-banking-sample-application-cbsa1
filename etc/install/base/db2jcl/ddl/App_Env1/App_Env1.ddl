--------------------------------------
--Fetch DDL - DB:ADB181
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  CREATE DATABASE ADB181
    BUFFERPOOL BP0
    INDEXBP    BP0
    CCSID      EBCDIC
    STOGROUP   SYSDEFLT;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TS:ADB181.ATS181
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  CREATE TABLESPACE ATS181
    IN ADB181
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
--Fetch DDL - TB:SC1181.ATB181
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  SET CURRENT SCHEMA='SC1181';
  CREATE TABLE ATB181
     (COL1                 CHAR(2) FOR SBCS DATA WITH DEFAULT NULL,
      COL2                 VARCHAR(36) FOR SBCS DATA
        WITH DEFAULT NULL,
      MASK_COLUMN          DECIMAL(11, 0) WITH DEFAULT NULL,
      COL3                 VARCHAR(36) FOR SBCS DATA
        WITH DEFAULT NULL)
    IN ADB181.ATS181
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
--Fetch DDL - IX:SC1181.AIX181
--------------------------------------
  SET CURRENT SQLID='SC1181';
  CREATE INDEX SC1181.AIX181
    ON SC1181.ATB181
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
--Fetch DDL - DB:ADB182
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  CREATE DATABASE ADB182
    BUFFERPOOL BP0
    INDEXBP    BP0
    CCSID      EBCDIC
    STOGROUP   SYSDEFLT;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TS:ADB182.ATS182
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  CREATE TABLESPACE ATS182
    IN ADB182
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
--Fetch DDL - TB:SC1182.ATB182
--------------------------------------
  SET CURRENT SQLID='CSMVDQE';
  SET CURRENT SCHEMA='SC1182';
  CREATE TABLE ATB182
     (COL1                 CHAR(2) FOR SBCS DATA WITH DEFAULT NULL,
      COL2                 VARCHAR(36) FOR SBCS DATA
        WITH DEFAULT NULL,
      MASK_COLUMN          DECIMAL(11, 0) WITH DEFAULT NULL,
      COL3                 VARCHAR(36) FOR SBCS DATA
        WITH DEFAULT NULL)
    IN ADB182.ATS182
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
--Fetch DDL - IX:SC1182.AIX182
--------------------------------------
  SET CURRENT SQLID='SC1182';
  CREATE INDEX SC1182.AIX182
    ON SC1182.ATB182
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

