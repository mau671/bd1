-- Archivo: 04.sql
-- Descripción:
--   Borra un teléfono de la tabla GE.PHONE. En este ejemplo se elimina el teléfono con id = 7.

DELETE FROM GE.PHONE
WHERE id = 7;

COMMIT;
