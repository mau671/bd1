-- Dar permisos de crear vistas y permitir otorgar permisos de seleccionar la vista a otros usuarios al esquema GE (desde sys/system)
GRANT CREATE VIEW TO GE;

-- Desde GE
-- 1) Vista con ID, nombre completo y salario
CREATE OR REPLACE VIEW salary_per_employee (
    employee_id,
    full_name,
    salary
) AS
SELECT
    id,
    first_name || ' ' || second_name || ' ' || first_surname || ' ' || second_surname  AS full_name,
    salary
FROM employee;

-- Verificar
DESC salary_per_employee;
SELECT * FROM salary_per_employee;
