-- 6. Crear los tablespace y esquemas AD

CREATE TABLESPACE AD_Data
    DATAFILE '/u01/app/oracle/oradata/XE/addata01.dbf'
    SIZE 10M
    REUSE
    AUTOEXTEND ON
    NEXT 512k
    MAXSIZE 200M;

CREATE TABLESPACE AD_Index
    DATAFILE '/u01/app/oracle/oradata/XE/adindex01.dbf'
    SIZE 10M
    REUSE
    AUTOEXTEND ON
    NEXT 512k
    MAXSIZE 200M;

CREATE USER AD 
    IDENTIFIED BY ad
    DEFAULT TABLESPACE AD_Data
    QUOTA 10M ON AD_Data
    TEMPORARY TABLESPACE temp
    QUOTA 5M ON SYSTEM
    QUOTA 10M ON AD_Index;

GRANT CONNECT to AD;
GRANT CREATE SESSION to AD;
GRANT CREATE TABLE to AD;