-- 1. Crear los tablespaces GE_Data y GE_Index
CREATE TABLESPACE GE_Data
    DATAFILE '/u01/app/oracle/oradata/XE/gedata01.dbf'
    SIZE 10M
    REUSE
    AUTOEXTEND ON
    NEXT 512k
    MAXSIZE 200M;

CREATE TABLESPACE GE_Index
    DATAFILE '/u01/app/oracle/oradata/XE/geindex01.dbf'
    SIZE 10M
    REUSE
    AUTOEXTEND ON
    NEXT 512k
    MAXSIZE 200M;