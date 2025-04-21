-- Inserts para TYPE_PEOPLE (debe ejecutarse primero por dependencias)
INSERT INTO GE.TYPE_PEOPLE (id, name) VALUES (1, 'Cliente');
INSERT INTO GE.TYPE_PEOPLE (id, name) VALUES (2, 'Empleado');

-- Tipo de teléfonos (requerido para PHONE)
INSERT INTO GE.TYPE_PHONE (id, name) VALUES (1, 'Casa');
INSERT INTO GE.TYPE_PHONE (id, name) VALUES (2, 'Celular');
INSERT INTO GE.TYPE_PHONE (id, name) VALUES (3, 'Oficina');
INSERT INTO GE.TYPE_PHONE (id, name) VALUES (4, 'Fax');

-- Teléfonos base (requerido para PHONEXPEOPLE)
INSERT INTO GE.PHONE (id, phone_number, id_type_phone) VALUES (1, '555-1234', 1);
INSERT INTO GE.PHONE (id, phone_number, id_type_phone) VALUES (2, '555-5678', 2);
INSERT INTO GE.PHONE (id, phone_number, id_type_phone) VALUES (3, '555-9012', 3);
INSERT INTO GE.PHONE (id, phone_number, id_type_phone) VALUES (4, '555-3456', 1);
INSERT INTO GE.PHONE (id, phone_number, id_type_phone) VALUES (5, '555-7890', 2);
INSERT INTO GE.PHONE (id, phone_number, id_type_phone) VALUES (6, '555-2345', 3);
INSERT INTO GE.PHONE (id, phone_number, id_type_phone) VALUES (7, '555-6789', 4);
INSERT INTO GE.PHONE (id, phone_number, id_type_phone) VALUES (8, '555-0123', 1);

-- Personas (requerido para todas las relaciones)
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (1, 'Juan', 'Carlos', 'Pérez', 'Gómez', 15000, DATE '1980-05-10',1);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (2, 'María', 'Luisa', 'Martínez', 'López', 15000, DATE '1978-03-15',1);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (3, 'Pedro', 'Alberto', 'Sánchez', 'Ramírez', 16000, DATE '1985-07-20',1);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (4, 'Ana', 'Isabel', 'Hernández', 'Morales', 16000, DATE '1982-11-05',1);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (5, 'Luis', 'Fernando', 'García', 'Torres', 17000, DATE '1979-02-28',1);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (6, 'Sofía', 'Elena', 'Ruiz', 'Castro', 17000, DATE '1983-09-12',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (7, 'Miguel', 'Angel', 'Díaz', 'Vargas', 18000, DATE '1981-04-03',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (8, 'Laura', 'Milagros', 'Moreno', 'Ramos', 18000, DATE '1984-08-17',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (9, 'Carlos', 'Andrés', 'Ortiz', 'Silva', 19000, DATE '1977-12-22',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (10, 'Elena', 'Beatriz', 'Mendoza', 'Cruz', 19000, DATE '1986-06-30',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (11, 'Diego', 'Esteban', 'Flores', 'Navarro', 2000, DATE '1990-01-15',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (12, 'Patricia', 'Soledad', 'Vega', 'Delgado', 2100, DATE '1992-03-22',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (13, 'Jorge', 'Andrés', 'Castro', 'Muñoz', 2200, DATE '1988-07-07',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (14, 'Cecilia', 'Marina', 'Romero', 'Paredes', 2300, DATE '1991-09-18',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (15, 'Ricardo', 'Fabián', 'Guerrero', 'Cabrera', 2400, DATE '1987-11-11',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (16, 'Verónica', 'Diana', 'Aguilar', 'Soto', 2500, DATE '1993-04-25',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (17, 'Andrés', 'Manuel', 'Rojas', 'Campos', 2600, DATE '1989-06-05',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (18, 'Gloria', 'Estela', 'Molina', 'Fuentes', 2700, DATE '1990-12-01',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (19, 'Raúl', 'Emilio', 'Salinas', 'Quintero', 2800, DATE '1988-10-10',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (20, 'Natalia', 'Rosa', 'Cifuentes', 'Valdez', 2900, DATE '1992-05-05',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (21, 'Boris', 'Adrián', 'Campos', 'Hernandez', 7600, DATE '1976-04-02',1);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (22, 'Barbara', 'María', 'Solís', 'Vargas', 2600, DATE '1982-08-02',2);
INSERT INTO GE.PEOPLE (id, first_name, second_name, first_surname, second_surname, salary, birthday, id_type_people) VALUES (23, 'bianca', 'paola', 'mora', 'cascante', 3400, DATE '1999-12-24',1);

-- Relación teléfonos-personas (depende de PEOPLE y PHONE)
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (1, 1); 
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (2, 2); 
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (3, 3); 
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (4, 4); 
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (5, 5); 
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (6, 6); 
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (7, 1); 
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (8, 8); 
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (9, 3); 
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (10, 4);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (12, 6);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (13, 1);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (14, 2);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (15, 3);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (16, 5);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (17, 4);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (18, 8);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (19, 6);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (20, 1);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (5, 1);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (5, 3);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (5, 6);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (10, 1);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (10, 8);
INSERT INTO GE.PHONEXPEOPLE (id_people, id_phone) VALUES (2, 6);

-- Productos (requerido para PRODUCTXCART)
INSERT INTO GE.PRODUCT (id, name) VALUES (1, 'Detergente');
INSERT INTO GE.PRODUCT (id, name) VALUES (2, 'Aceite');
INSERT INTO GE.PRODUCT (id, name) VALUES (3, 'Shampoo');
INSERT INTO GE.PRODUCT (id, name) VALUES (4, 'Cereal');
INSERT INTO GE.PRODUCT (id, name) VALUES (5, 'Tomate');
INSERT INTO GE.PRODUCT (id, name) VALUES (6, 'Queso');
INSERT INTO GE.PRODUCT (id, name) VALUES (7, 'Harina');
INSERT INTO GE.PRODUCT (id, name) VALUES (8, 'Azucar');
INSERT INTO GE.PRODUCT (id, name) VALUES (9, 'Leche');
INSERT INTO GE.PRODUCT (id, name) VALUES (10, 'Desodorante');
INSERT INTO GE.PRODUCT (id, name) VALUES (11, 'Pescado');
INSERT INTO GE.PRODUCT (id, name) VALUES (12, 'Natilla');
INSERT INTO GE.PRODUCT (id, name) VALUES (13, 'Lechuga');
INSERT INTO GE.PRODUCT (id, name) VALUES (14, 'Pasta');
INSERT INTO GE.PRODUCT (id, name) VALUES (15, 'Pollo');

-- Carritos de compra (requerido para BUY y PRODUCTXCART)
INSERT INTO GE.CART (id, date_purchase) VALUES (1, TO_DATE('2025-01-04', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (2, TO_DATE('2025-04-02', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (3, TO_DATE('2025-03-31', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (4, TO_DATE('2025-03-12', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (5, TO_DATE('2025-02-03', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (6, TO_DATE('2025-01-25', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (7, TO_DATE('2025-01-10', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (8, TO_DATE('2025-01-01', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (9, TO_DATE('2025-04-02', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (10, TO_DATE('2025-04-02', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (11, TO_DATE('2025-02-17', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (12, TO_DATE('2025-03-13', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (13, TO_DATE('2025-03-13', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (14, TO_DATE('2025-02-08', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (15, TO_DATE('2025-01-21', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (16, TO_DATE('2025-04-01', 'YYYY-MM-DD'));
INSERT INTO GE.CART (id, date_purchase) VALUES (17, TO_DATE('2025-02-28', 'YYYY-MM-DD'));

-- Relación compras (depende de PEOPLE y CART)
INSERT INTO GE.BUY (id_people, id_cart) VALUES (5, 1);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (5, 2);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (5, 3);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (6, 4);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (6, 5);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (6, 6);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (7, 7);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (7, 8);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (7, 9);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (8, 10);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (8, 11);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (8, 12);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (9, 13);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (9, 14);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (9, 15);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (10, 16);
INSERT INTO GE.BUY (id_people, id_cart) VALUES (12, 17);

-- Productos en carritos (depende de CART y PRODUCT)
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (1, 1);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (1, 12);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (1, 5);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (2, 2);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (2, 15);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (3, 12);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (3, 4);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (3, 9);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (3, 11);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (4, 5);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (4, 6);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (5, 7);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (5, 14);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (5, 1);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (6, 15);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (6, 2);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (7, 13);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (7, 4);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (8, 8);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (8, 3);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (8, 1);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (9, 15);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (9, 10);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (10, 11);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (10, 4);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (10, 3);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (10, 9);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (10, 13);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (11, 2);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (11, 6);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (12, 14);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (12, 12);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (13, 7);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (13, 10);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (14, 11);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (14, 15);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (15, 6);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (15, 1);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (16, 9);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (16, 14);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (17, 2);
INSERT INTO GE.PRODUCTXCART (id_cart, id_product) VALUES (17, 15);

COMMIT;