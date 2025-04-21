-- 07.sql - Vistas para identificar los 3 salarios más altos
-- 
-- Descripción: Este script crea dos vistas diferentes que muestran las personas
-- con los 3 salarios más altos en el sistema. Implementa dos técnicas distintas
-- (ROWNUM y RANK) para demostrar las diferentes formas de manejar empates en rankings.
-- 
-- Tablas utilizadas:
-- - PEOPLE: Información de las personas incluyendo datos salariales
-- 
-- Vista 1: V_TOP3_SALARY_ROWNUM
-- Utiliza ROWNUM para seleccionar estrictamente las 3 primeras filas después de ordenar,
-- sin considerar posibles empates.
--
-- Vista 2: V_TOP3_SALARY_RANK
-- Utiliza la función analítica RANK() para permitir la inclusión de todos los registros
-- con el mismo rango salarial, pudiendo devolver más de 3 registros si existen empates.

-- Vista 1 (ROWNUM)
CREATE OR REPLACE VIEW GE.V_TOP3_SALARY_ROWNUM AS
SELECT ROWNUM AS id, 
       first_name || ' ' || first_surname AS nombre,
       salary
FROM (SELECT first_name, first_surname, salary
      FROM GE.PEOPLE
      ORDER BY salary DESC)
WHERE ROWNUM <= 3;

-- Vista 2 (RANK)
CREATE OR REPLACE VIEW GE.V_TOP3_SALARY_RANK AS
SELECT first_name || ' ' || first_surname AS nombre,
       salary
FROM (SELECT first_name, first_surname, salary,
             RANK() OVER (ORDER BY salary DESC) salary_rank
      FROM GE.PEOPLE)
WHERE salary_rank <= 3;

/* 
Diferencia:
- ROWNUM: Estricto top 3 físico, ignora empates
- RANK: Incluye todos los registros con el mismo rango, podría devolver más de 3 si hay empates
*/