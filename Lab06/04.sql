---
    ---Descripción:
    --- Cuando en el fetch del test se agregan menos campos se genera un error
    --- donde se muestra que la cantidad de valores en el fetch es inválido.
---
SET SERVEROUTPUT ON;
DECLARE
    CURSOR c IS
        SELECT p.id, p.phone_number, tp.name
        FROM ge.phone p
        JOIN ge.type_phone tp ON p.id_type_phone = tp.id
        WHERE p.id = 2 AND p.id_type_phone = 2;

    v_id        ge.phone.id%TYPE;
    v_number    ge.phone.phone_number%TYPE;
    -- v_type_name ge.type_phone.name%TYPE; -- NO se declara esta variable para simular el error
BEGIN
    DBMS_OUTPUT.put_line('--- Prueba Punto 4: MENOS variables que columnas ---');

    OPEN c;
    FETCH c INTO v_id, v_number;
    CLOSE c;
END;
/

