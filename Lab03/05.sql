-- 05.sql - Consulta de personas con teléfonos de tipo "Casa"
-- 
-- Descripción: Esta consulta obtiene todas las personas que tienen al menos
-- un número de teléfono registrado como tipo "Casa". Se utiliza DISTINCT
-- para evitar que una persona aparezca múltiples veces si tiene varios teléfonos
-- del mismo tipo.
-- 
-- Tablas utilizadas:
-- - PEOPLE: Información de las personas
-- - PHONEXPEOPLE: Relación entre personas y teléfonos
-- - PHONE: Números telefónicos
-- - TYPE_PHONE: Tipos de teléfonos (Casa, Celular, etc.)
SELECT DISTINCT p.* 
FROM GE.PEOPLE p
INNER JOIN GE.PHONEXPEOPLE pp ON p.id = pp.id_people  -- Relación persona-teléfono
INNER JOIN GE.PHONE ph ON pp.id_phone = ph.id         -- Obtención del teléfono
INNER JOIN GE.TYPE_PHONE tp ON ph.id_type_phone = tp.id  -- Tipo de teléfono
WHERE tp.name = 'Casa';  -- Filtro para teléfonos de tipo "Casa"