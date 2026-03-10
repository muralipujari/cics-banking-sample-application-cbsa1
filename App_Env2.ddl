--------------------------------------
--Fetch DDL - AL:DSN8130A.ACT
--------------------------------------
  SET CURRENT SQLID='TS4430';
  SET CURRENT SCHEMA='DSN8130A';
  CREATE ALIAS ACT FOR DSN8130.ACT ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - DB:IVPWOLPF
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  CREATE DATABASE IVPWOLPF
    BUFFERPOOL BP0
    INDEXBP    BP0
    CCSID      EBCDIC
    STOGROUP   SYSDEFLT;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TS:IVPWOLPF.DSN8S13D
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  CREATE TABLESPACE DSN8S13D
    IN IVPWOLPF
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
    LOCKSIZE PAGE
    LOCKMAX SYSTEM
    CLOSE NO
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
--Fetch DDL - TB:IVPNBIK.DEPT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE TABLE DEPT
     (DEPTNO               CHAR(3) FOR SBCS DATA NOT NULL,
      DEPTNAME             VARCHAR(150) FOR SBCS DATA NOT NULL,
      MGRNO                CHAR(6) FOR SBCS DATA WITH DEFAULT NULL,
      ADMRDEPT             CHAR(3) FOR SBCS DATA NOT NULL,
      LOCATION             CHAR(16) FOR SBCS DATA WITH DEFAULT NULL,
      ADD_COL              SMALLINT NOT NULL WITH DEFAULT,
      CONSTRAINT DEPTNO
      PRIMARY KEY (DEPTNO))
    IN IVPWOLPF.DSN8S13D
    PARTITION BY SIZE
    AUDIT NONE
    DATA CAPTURE NONE
    CCSID      EBCDIC
    NOT VOLATILE
    APPEND NO  ;
  COMMIT;
  ALTER TABLE IVPNBIK.DEPT FOREIGN KEY RDD
     (ADMRDEPT)
    REFERENCES IVPNBIK.DEPT
     (DEPTNO)
    ON DELETE CASCADE ENFORCED ;
  COMMIT;
  ALTER TABLE IVPNBIK.DEPT FOREIGN KEY RDE
     (MGRNO)
    REFERENCES IVPNBIK.EMP
     (EMPNO)
    ON DELETE SET NULL ENFORCED ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XDEPT1
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE UNIQUE INDEX XDEPT1
    ON IVPNBIK.DEPT
     (DEPTNO                ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XDEPT2
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE INDEX XDEPT2
    ON IVPNBIK.DEPT
     (MGRNO                 ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XDEPT3
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE INDEX XDEPT3
    ON IVPNBIK.DEPT
     (ADMRDEPT              ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TS:IVPWOLPF.DSN8S13E
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  CREATE TABLESPACE DSN8S13E
    IN IVPWOLPF
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 5 FOR UPDATE 0
    GBPCACHE CHANGED
    TRACKMOD YES
    LOGGED
    DSSIZE 4 G
    NUMPARTS 5
     (PART 3
        COMPRESS NO)
    SEGSIZE 32
    BUFFERPOOL BP0
    LOCKSIZE PAGE
    LOCKMAX SYSTEM
    CLOSE NO
    COMPRESS YES FIXEDLENGTH
    CCSID      EBCDIC
    DEFINE YES
    MAXROWS 255
    PAGENUM ABSOLUTE
    INSERT ALGORITHM 0;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TB:IVPNBIK.EMP
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE TABLE EMP
     (EMPNO                CHAR(6) FOR SBCS DATA NOT NULL,
      FIRSTNME             VARCHAR(12) FOR SBCS DATA NOT NULL,
      MIDINIT              CHAR(1) FOR SBCS DATA NOT NULL,
      LASTNAME             VARCHAR(15) FOR SBCS DATA NOT NULL,
      WORKDEPT             CHAR(3) FOR SBCS DATA WITH DEFAULT NULL,
      PHONENO              CHAR(4) FOR SBCS DATA WITH DEFAULT NULL,
      HIREDATE             DATE WITH DEFAULT NULL,
      JOB                  CHAR(8) FOR SBCS DATA WITH DEFAULT NULL,
      EDLEVEL              SMALLINT WITH DEFAULT NULL,
      SEX                  CHAR(1) FOR SBCS DATA WITH DEFAULT NULL,
      BIRTHDATE            DATE WITH DEFAULT NULL,
      SALARY               DECIMAL(9, 2) WITH DEFAULT NULL,
      BONUS                DECIMAL(9, 2) WITH DEFAULT NULL,
      COMM                 DECIMAL(9, 2) WITH DEFAULT NULL,
      CONSTRAINT EMPNO
      PRIMARY KEY (EMPNO),
      CONSTRAINT NUMBER
        CHECK (PHONENO >= '0000' AND PHONENO <= '9999' ),
      CONSTRAINT PERSON CHECK (SEX = 'M' OR SEX = 'F' ))
    IN IVPWOLPF.DSN8S13E
    PARTITION BY (EMPNO ASC)
     (PARTITION 1 ENDING AT ('099999'),
      PARTITION 2 ENDING AT ('199999'),
      PARTITION 3 ENDING AT ('299999'),
      PARTITION 4 ENDING AT ('499999'),
      PARTITION 5 ENDING AT ('999999'))
    EDITPROC  DSN8EAE1 WITH ROW ATTRIBUTES
    AUDIT NONE
    DATA CAPTURE NONE
    CCSID      EBCDIC
    NOT VOLATILE
    APPEND NO  ;
  COMMIT;
  ALTER TABLE IVPNBIK.EMP FOREIGN KEY RED
     (WORKDEPT)
    REFERENCES IVPNBIK.DEPT
     (DEPTNO)
    ON DELETE SET NULL ENFORCED ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XEMP1
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE UNIQUE INDEX XEMP1
    ON IVPNBIK.EMP
     (EMPNO                 ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XEMP2
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE INDEX XEMP2
    ON IVPNBIK.EMP
     (WORKDEPT              ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TS:IVPWOLPF.DSN8S13M
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  CREATE TABLESPACE DSN8S13M
    IN IVPWOLPF
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 5 FOR UPDATE 0
    GBPCACHE CHANGED
    TRACKMOD YES
    MAXPARTITIONS 254
    LOGGED
    DSSIZE 4 G
    SEGSIZE 4
    BUFFERPOOL BP0
    LOCKSIZE ROW
    LOCKMAX 0
    CLOSE NO
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
--Fetch DDL - TB:IVPNBIK.PROJ
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE TABLE PROJ
     (PROJNO               CHAR(6) FOR SBCS DATA NOT NULL,
      PROJNAME             VARCHAR(24) FOR SBCS DATA NOT NULL
        WITH DEFAULT 'PROJECT NAME UNDEFINED',
      DEPTNO               CHAR(3) FOR SBCS DATA NOT NULL,
      RESPEMP              CHAR(6) FOR SBCS DATA NOT NULL,
      PRSTAFF              DECIMAL(5, 2) WITH DEFAULT NULL,
      PRSTDATE             DATE WITH DEFAULT NULL,
      PRENDATE             DATE WITH DEFAULT NULL,
      MAJPROJ              CHAR(6) FOR SBCS DATA WITH DEFAULT NULL,
      ADD_COL              SMALLINT WITH DEFAULT NULL,
      CONSTRAINT PROJNO
      PRIMARY KEY (PROJNO))
    IN IVPWOLPF.DSN8S13M
    PARTITION BY SIZE
    AUDIT NONE
    DATA CAPTURE NONE
    CCSID      EBCDIC
    NOT VOLATILE
    APPEND NO  ;
  COMMIT;
  ALTER TABLE IVPNBIK.PROJ FOREIGN KEY DEPTNO
     (DEPTNO)
    REFERENCES IVPNBIK.DEPT
     (DEPTNO)
    ON DELETE RESTRICT ENFORCED ;
  COMMIT;
  ALTER TABLE IVPNBIK.PROJ FOREIGN KEY RESPEMP
     (RESPEMP)
    REFERENCES IVPNBIK.EMP
     (EMPNO)
    ON DELETE RESTRICT ENFORCED ;
  COMMIT;
  ALTER TABLE IVPNBIK.PROJ FOREIGN KEY RPP
     (MAJPROJ)
    REFERENCES IVPNBIK.PROJ
     (PROJNO)
    ON DELETE CASCADE ENFORCED ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XPROJ1
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE UNIQUE INDEX XPROJ1
    ON IVPNBIK.PROJ
     (PROJNO                ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XPROJ2
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE INDEX XPROJ2
    ON IVPNBIK.PROJ
     (RESPEMP               ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TS:IVPWOLPF.DSN8S13N
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  CREATE TABLESPACE DSN8S13N
    IN IVPWOLPF
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 5 FOR UPDATE 0
    GBPCACHE CHANGED
    TRACKMOD YES
    MAXPARTITIONS 254
    LOGGED
    DSSIZE 4 G
    SEGSIZE 4
    BUFFERPOOL BP0
    LOCKSIZE ROW
    LOCKMAX 0
    CLOSE NO
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
--Fetch DDL - TB:IVPNBIK.ACT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE TABLE ACT
     (ACTNO                SMALLINT NOT NULL,
      ACTKWD               CHAR(6) FOR SBCS DATA NOT NULL,
      ACTDESC              VARCHAR(20) FOR SBCS DATA NOT NULL,
      CONSTRAINT ACTNO
      PRIMARY KEY (ACTNO))
    IN IVPWOLPF.DSN8S13N
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
--Fetch DDL - IX:IVPNBIK.XACT1
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE UNIQUE INDEX XACT1
    ON IVPNBIK.ACT
     (ACTNO                 ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XACT2
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE UNIQUE INDEX XACT2
    ON IVPNBIK.ACT
     (ACTKWD                ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TS:IVPWOLPF.DSN8S13O
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  CREATE TABLESPACE DSN8S13O
    IN IVPWOLPF
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 5 FOR UPDATE 0
    GBPCACHE CHANGED
    TRACKMOD YES
    MAXPARTITIONS 254
    LOGGED
    DSSIZE 4 G
    SEGSIZE 4
    BUFFERPOOL BP0
    LOCKSIZE ROW
    LOCKMAX 0
    CLOSE NO
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
--Fetch DDL - TB:IVPNBIK.PROJACT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE TABLE PROJACT
     (PROJNO               CHAR(6) FOR SBCS DATA NOT NULL,
      ACTNO                SMALLINT NOT NULL,
      ACSTAFF              DECIMAL(5, 2) WITH DEFAULT NULL,
      ACSTDATE             DATE NOT NULL,
      ACENDATE             DATE WITH DEFAULT NULL,
      CONSTRAINT PROJNO
      PRIMARY KEY (PROJNO,
                   ACTNO,
                   ACSTDATE))
    IN IVPWOLPF.DSN8S13O
    PARTITION BY SIZE
    AUDIT NONE
    DATA CAPTURE NONE
    CCSID      EBCDIC
    NOT VOLATILE
    APPEND NO  ;
  COMMIT;
  ALTER TABLE IVPNBIK.PROJACT FOREIGN KEY RPAA
     (ACTNO)
    REFERENCES IVPNBIK.ACT
     (ACTNO)
    ON DELETE RESTRICT ENFORCED ;
  COMMIT;
  ALTER TABLE IVPNBIK.PROJACT FOREIGN KEY RPAP
     (PROJNO)
    REFERENCES IVPNBIK.PROJ
     (PROJNO)
    ON DELETE RESTRICT ENFORCED ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XPROJAC1
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE UNIQUE INDEX XPROJAC1
    ON IVPNBIK.PROJACT
     (PROJNO                ASC,
      ACTNO                 ASC,
      ACSTDATE              ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - TS:IVPWOLPF.DSN8S13P
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  CREATE TABLESPACE DSN8S13P
    IN IVPWOLPF
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 5 FOR UPDATE 0
    GBPCACHE CHANGED
    TRACKMOD YES
    MAXPARTITIONS 254
    LOGGED
    DSSIZE 4 G
    SEGSIZE 4
    BUFFERPOOL BP0
    LOCKSIZE ROW
    LOCKMAX 0
    CLOSE NO
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
--Fetch DDL - TB:IVPNBIK.EMPPROJACT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE TABLE EMPPROJACT
     (EMPNO                CHAR(6) FOR SBCS DATA NOT NULL,
      PROJNO               CHAR(6) FOR SBCS DATA NOT NULL,
      ACTNO                SMALLINT NOT NULL,
      EMPTIME              DECIMAL(5, 2) WITH DEFAULT NULL,
      EMSTDATE             DATE WITH DEFAULT NULL,
      EMENDATE             DATE WITH DEFAULT NULL)
    IN IVPWOLPF.DSN8S13P
    PARTITION BY SIZE
    AUDIT NONE
    DATA CAPTURE NONE
    CCSID      EBCDIC
    NOT VOLATILE
    APPEND NO  ;
  COMMIT;
  ALTER TABLE IVPNBIK.EMPPROJACT FOREIGN KEY REPAE
     (EMPNO)
    REFERENCES IVPNBIK.EMP
     (EMPNO)
    ON DELETE RESTRICT ENFORCED ;
  COMMIT;
  ALTER TABLE IVPNBIK.EMPPROJACT FOREIGN KEY REPAPA
     (PROJNO,
      ACTNO,
      EMSTDATE)
    REFERENCES IVPNBIK.PROJACT
     (PROJNO,
      ACTNO,
      ACSTDATE)
    ON DELETE RESTRICT ENFORCED ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XEMPPROJACT1
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE UNIQUE INDEX XEMPPROJACT1
    ON IVPNBIK.EMPPROJACT
     (PROJNO                ASC,
      ACTNO                 ASC,
      EMSTDATE              ASC,
      EMPNO                 ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - IX:IVPNBIK.XEMPPROJACT2
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPNBIK';
  CREATE INDEX XEMPPROJACT2
    ON IVPNBIK.EMPPROJACT
     (EMPNO                 ASC)
    USING STOGROUP SYSDEFLT
    PRIQTY -1 SECQTY -1
    ERASE  NO
    FREEPAGE 0 PCTFREE 10
    GBPCACHE CHANGED
    NOT CLUSTER
    COMPRESS NO
    INCLUDE NULL KEYS
    BUFFERPOOL BP0
    CLOSE NO
    COPY NO
    DEFER NO
    DEFINE YES
    PIECESIZE 4 G;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPPBU.ACT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPPBU';
  CREATE ALIAS ACT FOR IVPNBIK.ACT ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPPBU.DEPT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPPBU';
  CREATE ALIAS DEPT FOR IVPNBIK.DEPT ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPPBU.EMP
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPPBU';
  CREATE ALIAS EMP FOR IVPNBIK.EMP ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPPBU.EMPPROJACT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPPBU';
  CREATE ALIAS EMPPROJACT FOR IVPNBIK.EMPPROJACT ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPPBU.PROJ
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPPBU';
  CREATE ALIAS PROJ FOR IVPNBIK.PROJ ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPPBU.PROJACT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPPBU';
  CREATE ALIAS PROJACT FOR IVPNBIK.PROJACT ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPVD.ACT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPVD';
  CREATE ALIAS ACT FOR IVPNBIK.ACT ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPVD.DEPT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPVD';
  CREATE ALIAS DEPT FOR IVPNBIK.DEPT ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPVD.EMP
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPVD';
  CREATE ALIAS EMP FOR IVPNBIK.EMP ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPVD.EMPPROJACT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPVD';
  CREATE ALIAS EMPPROJACT FOR IVPNBIK.EMPPROJACT ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPVD.PROJ
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPVD';
  CREATE ALIAS PROJ FOR IVPNBIK.PROJ ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

--------------------------------------
--Fetch DDL - AL:IVPVD.PROJACT
--------------------------------------
  SET CURRENT SQLID='CSMVDQO';
  SET CURRENT SCHEMA='IVPVD';
  CREATE ALIAS PROJACT FOR IVPNBIK.PROJACT ;
  COMMIT;
--------------------------------------
--End of fetched DDL
--------------------------------------

