-- 2. Crear el esquema GE
CREATE USER GE 
    IDENTIFIED BY ge
    DEFAULT TABLESPACE GE_Data
    QUOTA 10M ON GE_Data
    TEMPORARY TABLESPACE temp
    QUOTA 5M ON SYSTEM
    QUOTA 10M ON GE_Index;

GRANT CONNECT to GE;
GRANT CREATE SESSION to GE;
GRANT CREATE TABLE to GE;

-- a. ¿Se pueden crear varios esquemas en la misma BD?
-- Sí, en Oracle un esquema es equivalente a un usuario con objetos propios.
-- b. ¿Cuál es el propósito de crear más de un esquema en la misma BD?
-- Separar datos y mejorar la organización y seguridad de la información.