-- 06.sql
CREATE OR REPLACE VIEW GE.V_LOW_SALARY_PEOPLE AS
SELECT id, first_name, first_surname, salary
FROM GE.PEOPLE
WHERE salary < 3000;