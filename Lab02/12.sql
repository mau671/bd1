-- Archivo: 12.sql
-- Descripción:
--   Se intenta cambiar el tipo de dato del atributo first_name de la tabla People
--   de VARCHAR2 a NUMBER.
--    Ocurre que si la columna tiene datos, el tipo de dato no se puede cambiar.
ALTER TABLE GE.PEOPLE MODIFY (first_name NUMBER(6));