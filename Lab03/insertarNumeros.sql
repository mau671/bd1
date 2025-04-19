-- Primero, inserción de tipos de teléfono en GE.TYPE_PHONE.
-- Se sugiere que los IDs sean asignados manualmente o mediante secuencia.
INSERT INTO GE.TYPE_PHONE (id, name)
VALUES (1, 'Casa');

INSERT INTO GE.TYPE_PHONE (id, name)
VALUES (2, 'Celular');

INSERT INTO GE.TYPE_PHONE (id, name)
VALUES (3, 'Oficina');

-- Se pueden agregar más tipos si se requiere, por ejemplo:
INSERT INTO GE.TYPE_PHONE (id, name)
VALUES (4, 'Fax');

-- Inserción de 8 teléfonos en GE.PHONE.
-- Se asume que el campo 'phone_number' contiene el número de teléfono,
-- y 'id_type_phone' referencia el tipo registrGEo.
INSERT INTO GE.PHONE (id, phone_number, id_type_phone)
VALUES (1, '555-1234', 1);

INSERT INTO GE.PHONE (id, phone_number, id_type_phone)
VALUES (2, '555-5678', 2);

INSERT INTO GE.PHONE (id, phone_number, id_type_phone)
VALUES (3, '555-9012', 3);

INSERT INTO GE.PHONE (id, phone_number, id_type_phone)
VALUES (4, '555-3456', 1);

INSERT INTO GE.PHONE (id, phone_number, id_type_phone)
VALUES (5, '555-7890', 2);

INSERT INTO GE.PHONE (id, phone_number, id_type_phone)
VALUES (6, '555-2345', 3);

INSERT INTO GE.PHONE (id, phone_number, id_type_phone)
VALUES (7, '555-6789', 4);

INSERT INTO GE.PHONE (id, phone_number, id_type_phone)
VALUES (8, '555-0123', 1);

COMMIT;