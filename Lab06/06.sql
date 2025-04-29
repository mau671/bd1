--=========
-- Punto 6
--=========

CREATE OR REPLACE PROCEDURE ge.get_person_phones_loop (
    p_person_id      IN  ge.people.id%TYPE,
    p_type_phone_id  IN  ge.type_phone.id%TYPE DEFAULT NULL
) IS
    CURSOR cur_phones IS
        SELECT ph.id,
               ph.phone_number,
               tp.name AS type_name
        FROM   ge.phonexpeople pxp
        JOIN   ge.phone        ph ON ph.id = pxp.id_phone
        JOIN   ge.type_phone   tp ON tp.id = ph.id_type_phone
        WHERE  pxp.id_people = p_person_id
          AND  (p_type_phone_id IS NULL
                OR ph.id_type_phone = p_type_phone_id);

    v_id        ge.phone.id%TYPE;
    v_number    ge.phone.phone_number%TYPE;
    v_type_name ge.type_phone.name%TYPE;
BEGIN
    OPEN cur_phones;
    LOOP
        FETCH cur_phones INTO v_id, v_number, v_type_name;
        EXIT WHEN cur_phones%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('ID: ' || v_id || ', Tel: ' || v_number || ', Tipo: ' || v_type_name);
    END LOOP;
    CLOSE cur_phones;
END;
