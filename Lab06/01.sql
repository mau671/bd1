CREATE OR REPLACE PROCEDURE ge.get_person_phones (
    p_person_id      IN  ge.people.id%TYPE,
    p_type_phone_id  IN  ge.type_phone.id%TYPE DEFAULT NULL,
    p_result         OUT SYS_REFCURSOR
) IS
BEGIN
    /*  Abre un cursor explícito con los teléfonos que
        pertenecen a la persona.  Si p_type_phone_id es
        nulo, se devuelven todos los teléfonos           */
    OPEN p_result FOR
        SELECT ph.id,
               ph.phone_number,
               tp.name AS type_name
        FROM   ge.phonexpeople pxp
        JOIN   ge.phone        ph ON ph.id = pxp.id_phone
        JOIN   ge.type_phone   tp ON tp.id = ph.id_type_phone
        WHERE  pxp.id_people = p_person_id
          AND  (p_type_phone_id IS NULL
                OR ph.id_type_phone = p_type_phone_id);
END get_person_phones;
/
