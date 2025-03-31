-- 2. Crear el esquema GE
CREATE USER ge 
    IDENTIFIED BY ge
    DEFAULT TABLESPACE GE_Data
    QUOTA 10M ON GE_Data
    TEMPORARY TABLESPACE temp
    QUOTA 5M ON SYSTEM;

GRANT CONNECT to ge;
GRANT CREATE SESSION to ge;
GRANT CREATE TABLE to ge;

-- a. ¿Se pueden crear varios esquemas en la misma BD?
-- Sí, en Oracle un esquema es equivalente a un usuario con objetos propios.
-- b. ¿Cuál es el propósito de crear más de un esquema en la misma BD?
-- Separar datos y mejorar la organización y seguridad de la información.