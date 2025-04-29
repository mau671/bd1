-- Insertar cursos
INSERT INTO UN.COURSE (id_course, course_name) VALUES (1, 'Matemáticas');
INSERT INTO UN.COURSE (id_course, course_name) VALUES (2, 'Física');

-- Insertar estudiantes
INSERT INTO UN.STUDENT (id_student, first_name, second_name, first_surname, second_surname, mail, university_card)
VALUES (1, 'Ana', 'María', 'López', 'Ramírez', 'ana.lopez@mail.com', 1234567890);

INSERT INTO UN.STUDENT (id_student, first_name, second_name, first_surname, second_surname, mail, university_card)
VALUES (2, 'Carlos', 'Enrique', 'Gómez', 'Morales', 'carlos.g@mail.com', 1987654321);

-- Insertar relaciones estudiante-curso
INSERT INTO UN.STUDENT_X_COURSE (id, id_course, id_student) VALUES (1, 1, 1);
INSERT INTO UN.STUDENT_X_COURSE (id, id_course, id_student) VALUES (2, 2, 1);
INSERT INTO UN.STUDENT_X_COURSE (id, id_course, id_student) VALUES (3, 1, 2);

-- Insertar estados
INSERT INTO UN.STATUS (id_status, status_name, id_studentxcourse) VALUES (1, 'Aprobado', 1);
INSERT INTO UN.STATUS (id_status, status_name, id_studentxcourse) VALUES (2, 'Pendiente', 2);
INSERT INTO UN.STATUS (id_status, status_name, id_studentxcourse) VALUES (3, 'Reprobado', 3);

COMMIT;
