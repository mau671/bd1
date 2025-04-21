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