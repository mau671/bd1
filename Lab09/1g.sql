-- GE le quita todos los permisos dados a CU
REVOKE INSERT, UPDATE, DELETE ON employee FROM CU;

-- Se intenta insertar un empleado con CU
INSERT INTO GE.EMPLOYEE (id, first_name, second_name, first_surname, second_surname,
                         salary, birthday)
            VALUES (3, 'Gabriela', 'Paola', 'Nuñez', 'Sánchez',9700, DATE '2000-06-15');

