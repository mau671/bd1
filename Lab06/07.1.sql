CREATE OR REPLACE PROCEDURE ge.get_People_Phone (p_id_person IN  ge.people.id%TYPE, p_kindofphone_name  IN  ge.type_phone.name%TYPE DEFAULT NULL) AS
    v_cursor     SYS_REFCURSOR;
    v_firstname  ge.people.first_name%TYPE;
    v_number     ge.phone.phone_number%TYPE;
    v_type_name  ge.type_phone.name%TYPE;
BEGIN
    -- Abrir cursor con teléfonos de la persona, filtrando por tipo si se indica
    OPEN v_cursor FOR 
        SELECT p.first_name, ph.phone_number, kp.name AS kind
        FROM ge.phonexpeople pxp
        INNER JOIN ge.phone ph ON ph.id = pxp.id_phone 
        INNER JOIN ge.people p ON p.id = pxp.id_people
        INNER JOIN ge.type_phone kp ON kp.id = ph.id_type_phone
        WHERE p.id = p_id_person
          AND (kp.name = NVL(p_kindofphone_name, kp.name));

    LOOP
        FETCH v_cursor INTO v_firstname, v_number, v_type_name;
        EXIT WHEN v_cursor%NOTFOUND;
        DBMS_OUTPUT.put_line('Nombre: ' || v_firstname ||
                             ' | Teléfono: ' || v_number ||
                             ' | Tipo: ' || v_type_name);
    END LOOP;

    CLOSE v_cursor;
    
    -- Segunda prueba: todos los teléfonos de la persona
    DBMS_OUTPUT.put_line(CHR(10) || '--- Mostrando todos los teléfonos de la persona nuevamente ---');

    OPEN v_cursor FOR 
        SELECT p.first_name, ph.phone_number, kp.name AS kind
        FROM ge.phonexpeople pxp
        INNER JOIN ge.phone ph ON ph.id = pxp.id_phone 
        INNER JOIN ge.people p ON p.id = pxp.id_people
        INNER JOIN ge.type_phone kp ON kp.id = ph.id_type_phone
        WHERE p.id = p_id_person;

    LOOP
        FETCH v_cursor INTO v_firstname, v_number, v_type_name;
        EXIT WHEN v_cursor%NOTFOUND;
        DBMS_OUTPUT.put_line('Nombre: ' || v_firstname ||
                             ' | Teléfono: ' || v_number ||
                             ' | Tipo: ' || v_type_name);
    END LOOP;

    CLOSE v_cursor;
END;
/

