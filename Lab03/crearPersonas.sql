-- Inserciones para las 10 personas con salarios altos (salarios repetidos en pares)
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (1, 'Juan', 'Carlos', 'Pérez', 'Gómez', 15000, DATE '1980-05-10',1);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (2, 'María', 'Luisa', 'Martínez', 'López', 15000, DATE '1978-03-15',1);

INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (3, 'Pedro', 'Alberto', 'Sánchez', 'Ramírez', 16000, DATE '1985-07-20',1);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (4, 'Ana', 'Isabel', 'Hernández', 'Morales', 16000, DATE '1982-11-05',1);

INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (5, 'Luis', 'Fernando', 'García', 'Torres', 17000, DATE '1979-02-28',1);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (6, 'Sofía', 'Elena', 'Ruiz', 'Castro', 17000, DATE '1983-09-12',2);

INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (7, 'Miguel', 'Angel', 'Díaz', 'Vargas', 18000, DATE '1981-04-03',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (8, 'Laura', 'Milagros', 'Moreno', 'Ramos', 18000, DATE '1984-08-17',2);

INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (9, 'Carlos', 'Andrés', 'Ortiz', 'Silva', 19000, DATE '1977-12-22',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (10, 'Elena', 'Beatriz', 'Mendoza', 'Cruz', 19000, DATE '1986-06-30',2);

-- Inserciones para 10 personas con salarios menores (valores distintos)
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (11, 'Diego', 'Esteban', 'Flores', 'Navarro', 2000, DATE '1990-01-15',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (12, 'Patricia', 'SoledGE', 'Vega', 'DelgGEo', 2100, DATE '1992-03-22',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (13, 'Jorge', 'Andrés', 'Castro', 'Muñoz', 2200, DATE '1988-07-07',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (14, 'Cecilia', 'Marina', 'Romero', 'Paredes', 2300, DATE '1991-09-18',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (15, 'Ricardo', 'Fabián', 'Guerrero', 'Cabrera', 2400, DATE '1987-11-11',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (16, 'Verónica', 'Diana', 'Aguilar', 'Soto', 2500, DATE '1993-04-25',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (17, 'Andrés', 'Manuel', 'Rojas', 'Campos', 2600, DATE '1989-06-05',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (18, 'Gloria', 'Estela', 'Molina', 'Fuentes', 2700, DATE '1990-12-01',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (19, 'Raúl', 'Emilio', 'Salinas', 'Quintero', 2800, DATE '1988-10-10',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (20, 'Natalia', 'Rosa', 'Cifuentes', 'Valdez', 2900, DATE '1992-05-05',2);

-- Inserciones de personas con nombres con B y b
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (21, 'Boris', 'Adrián', 'Campos', 'Hernandez', 7600, DATE '1976-04-02',1);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (22, 'Barbara', 'María', 'Solís', 'Vargas', 2600, DATE '1982-08-02',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people)
VALUES (23, 'bianca', 'paola', 'mora', 'cascante', 3400, DATE '1999-12-24',1);



COMMIT;