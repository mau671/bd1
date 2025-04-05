-- Archivo: 11.sql
-- Descripción:
--   Se crean compras para 7 clientes.
-- Al menos 5 de ellos tienen más de dos compras con más de 1 producto por compra.

-- Primero se insertan las compras realizadas
INSERT INTO CART (id, date_purchase) 
    VALUES (1, TO_DATE('2025-01-04', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (2, TO_DATE('2025-04-02', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (3, TO_DATE('2025-03-31', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (4, TO_DATE('2025-03-12', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (5, TO_DATE('2025-02-03', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (6, TO_DATE('2025-01-25', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (7, TO_DATE('2025-01-10', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (8, TO_DATE('2025-01-01', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (9, TO_DATE('2025-04-02', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (10, TO_DATE('2025-04-02', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (11, TO_DATE('2025-02-17', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (12, TO_DATE('2025-03-13', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (13, TO_DATE('2025-03-13', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (14, TO_DATE('2025-02-08', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (15, TO_DATE('2025-01-21', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (16, TO_DATE('2025-04-01', 'YYYY-MM-DD'));
INSERT INTO CART (id, date_purchase) 
    VALUES (17, TO_DATE('2025-02-28', 'YYYY-MM-DD'));

-- Después se inserta en BUY, para ver cuales personas hicieron cuales compras
INSERT INTO BUY (id_people, id_cart) VALUES (5, 1);
INSERT INTO BUY (id_people, id_cart) VALUES (5, 2);
INSERT INTO BUY (id_people, id_cart) VALUES (5, 3);

INSERT INTO BUY (id_people, id_cart) VALUES (6, 4);
INSERT INTO BUY (id_people, id_cart) VALUES (6, 5);
INSERT INTO BUY (id_people, id_cart) VALUES (6, 6);

INSERT INTO BUY (id_people, id_cart) VALUES (7, 7);
INSERT INTO BUY (id_people, id_cart) VALUES (7, 8);
INSERT INTO BUY (id_people, id_cart) VALUES (7, 9);

INSERT INTO BUY (id_people, id_cart) VALUES (8, 10);
INSERT INTO BUY (id_people, id_cart) VALUES (8, 11);
INSERT INTO BUY (id_people, id_cart) VALUES (8, 12);

INSERT INTO BUY (id_people, id_cart) VALUES (9, 13);
INSERT INTO BUY (id_people, id_cart) VALUES (9, 14);
INSERT INTO BUY (id_people, id_cart) VALUES (9, 15);

INSERT INTO BUY (id_people, id_cart) VALUES (10, 16);

INSERT INTO BUY (id_people, id_cart) VALUES (12, 17);

-- Por último se ingresan los productos al carrito
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (1, 1);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (1, 12);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (1, 5);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (2, 2);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (2, 15);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (3, 12);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (3, 4);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (3, 9);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (3, 11);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (4, 5);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (4, 6);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (5, 7);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (5, 14);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (5, 1);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (6, 15);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (6, 2);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (7, 13);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (7, 4);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (8, 8);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (8, 3);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (8, 1);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (9, 15);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (9, 10);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (10, 11);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (10, 4);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (10, 3);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (10, 9);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (10, 13);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (11, 2);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (11, 6);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (12, 14);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (12, 12);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (13, 7);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (13, 10);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (14, 11);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (14, 15);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (15, 6);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (15, 1);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (16, 9);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (16, 14);

INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (17, 2);
INSERT INTO PRODUCTXCART (id_cart, id_product) VALUES (17, 15);

COMMIT;
