-- Se modifica el salario de los dos empleados con CU
UPDATE GE.employee
SET salary = 8000
WHERE id = 1;

UPDATE GE.employee
SET salary = 11000
WHERE id = 2;

COMMIT;