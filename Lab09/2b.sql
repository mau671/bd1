-- Desde GE
GRANT SELECT ON salary_per_employee TO cu;

-- Desde CU
-- a) Consultar la vista: funciona
SELECT * FROM ge.salary_per_employee;

-- Puede CU acceder a los datos que están en la view (nombre, ID y salario) directamente en employee? 
-- No, porque no tiene permiso de SELECT en la tabla employee.

-- b) Intentar leer directamente de la tabla GE.EMPLOYEE: falla
SELECT id, first_name, salary FROM ge.employee;