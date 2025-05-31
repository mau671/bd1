-- Se insertan dos empleados con CU
INSERT INTO GE.EMPLOYEE (id, first_name, second_name, first_surname, second_surname,
                         salary, birthday)
            VALUES (1, 'Luisa', 'María', 'Fuentes', 'Castro',7000, DATE '1989-05-10');
            
INSERT INTO GE.EMPLOYEE (id, first_name, second_name, first_surname, second_surname,
                         salary, birthday)
            VALUES (2, 'Mario', 'Esteban', 'Espinoza', 'Gamboa',10500, DATE '1995-01-30');

COMMIT;