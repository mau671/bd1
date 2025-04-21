-- 06.sql - Vista de Personas con Salario Bajo
-- 
-- Descripción: Esta vista identifica a todas las personas en el sistema
-- que tienen un salario inferior a 3000 unidades monetarias. Es útil para
-- análisis de remuneraciones, políticas salariales o identificación de
-- candidatos para posibles aumentos o bonificaciones.
-- 
-- Tablas utilizadas:
-- - PEOPLE: Información de las personas incluyendo datos salariales
-- 
-- Campos seleccionados:
-- - id: Identificador único de la persona
-- - first_name: Primer nombre de la persona
-- - first_surname: Primer apellido de la persona
-- - salary: Monto salarial actual
CREATE OR REPLACE VIEW GE.V_LOW_SALARY_PEOPLE AS
SELECT id, first_name, first_surname, salary
FROM GE.PEOPLE
WHERE salary < 3000;