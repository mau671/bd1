-- Crear el esquema UN
CREATE USER UN 
    IDENTIFIED BY un
    DEFAULT TABLESPACE GE_Data
    QUOTA 10M ON GE_Data
    TEMPORARY TABLESPACE temp
    QUOTA 5M ON SYSTEM
    QUOTA 10M ON GE_Index;

GRANT CONNECT to UN;

-- Se le da permiso a UN de borrar en la tabla Employee de GE a través de CU
GRANT DELETE ON GE.employee TO UN;

-- Se borra un empleado a través de UN
DELETE FROM GE.employee
WHERE id = 1;

COMMIT;