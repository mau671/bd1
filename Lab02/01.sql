-- Archivo: 01.sql
-- Descripción:
--   Inserta 20 registros en la tabla GE.PEOPLE.
--   Se asegura que 10 personas (con los IDs 1 a 10) tienen los salarios más altos,
--   distribuidos en 5 pares (cGEa par repite el mismo salario).
--
-- a. La creación de la tabla corresponde al lenguaje DDL (Data Definition Language) de Oracle.
-- b. La inserción corresponde al lenguaje DML (Data Manipulation Language) de Oracle.
-- c. Al salir y volver a entrar en la BD, los datos estarán persistidos (si se ha realizado COMMIT)
--    porque Oracle almacena de forma permanente los datos comprometidos en la base de datos.

-- Asegurarse de estar en el esquema GE y que la tabla PEOPLE ya fue creGEa.

-- Inserciones para las 10 personas con salarios altos (salarios repetidos en pares)
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (1, 'Juan', 'Carlos', 'Pérez', 'Gómez', 15000, DATE '1980-05-10');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (2, 'María', 'Luisa', 'Martínez', 'López', 15000, DATE '1978-03-15');

INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (3, 'Pedro', 'Alberto', 'Sánchez', 'Ramírez', 16000, DATE '1985-07-20');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (4, 'Ana', 'Isabel', 'Hernández', 'Morales', 16000, DATE '1982-11-05');

INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (5, 'Luis', 'Fernando', 'García', 'Torres', 17000, DATE '1979-02-28');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (6, 'Sofía', 'Elena', 'Ruiz', 'Castro', 17000, DATE '1983-09-12');

INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (7, 'Miguel', 'Angel', 'Díaz', 'Vargas', 18000, DATE '1981-04-03');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (8, 'Laura', 'Milagros', 'Moreno', 'Ramos', 18000, DATE '1984-08-17');

INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (9, 'Carlos', 'Andrés', 'Ortiz', 'Silva', 19000, DATE '1977-12-22');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (10, 'Elena', 'Beatriz', 'Mendoza', 'Cruz', 19000, DATE '1986-06-30');

-- Inserciones para 10 personas con salarios menores (valores distintos)
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (11, 'Diego', 'Esteban', 'Flores', 'Navarro', 2000, DATE '1990-01-15');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (12, 'Patricia', 'SoledGE', 'Vega', 'DelgGEo', 2100, DATE '1992-03-22');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (13, 'Jorge', 'Andrés', 'Castro', 'Muñoz', 2200, DATE '1988-07-07');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (14, 'Cecilia', 'Marina', 'Romero', 'Paredes', 2300, DATE '1991-09-18');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (15, 'Ricardo', 'Fabián', 'Guerrero', 'Cabrera', 2400, DATE '1987-11-11');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (16, 'Verónica', 'Diana', 'Aguilar', 'Soto', 2500, DATE '1993-04-25');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (17, 'Andrés', 'Manuel', 'Rojas', 'Campos', 2600, DATE '1989-06-05');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (18, 'Gloria', 'Estela', 'Molina', 'Fuentes', 2700, DATE '1990-12-01');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (19, 'Raúl', 'Emilio', 'Salinas', 'Quintero', 2800, DATE '1988-10-10');
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday)
VALUES (20, 'Natalia', 'Rosa', 'Cifuentes', 'Valdez', 2900, DATE '1992-05-05');

COMMIT;
