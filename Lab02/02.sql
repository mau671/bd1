-- Archivo: 02.sql
-- Descripción:
--   Borra una persona de la tabla GE.PEOPLE. En este ejemplo se elimina la persona con id = 11.

DELETE FROM GE.PEOPLE
WHERE id = 11;

COMMIT;
