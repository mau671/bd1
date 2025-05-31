-- Crear el esquema CU
CREATE USER CU 
    IDENTIFIED BY cu
    DEFAULT TABLESPACE GE_Data
    QUOTA 10M ON GE_Data
    TEMPORARY TABLESPACE temp
    QUOTA 5M ON SYSTEM
    QUOTA 10M ON GE_Ind;

GRANT CONNECT to CU;

-- Se le da permiso a CU de insertar en la tabla Employee de GE
GRANT INSERT ON GE.employee TO CU;