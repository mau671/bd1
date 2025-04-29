SET SERVEROUTPUT ON;
DECLARE
    CURSOR c IS
        SELECT p.id, p.phone_number, tp.name
        FROM ge.phone p
        JOIN ge.type_phone tp ON p.id_type_phone = tp.id
        WHERE p.id = 2 AND p.id_type_phone = 2;

    v_id        ge.phone.id%TYPE;
    v_number    ge.phone.phone_number%TYPE;
    v_type_name ge.type_phone.name%TYPE;
    v_extra     VARCHAR2(100);  -- variable adicional
BEGIN
    DBMS_OUTPUT.put_line('--- Prueba Punto 3: MÁS variables que columnas ---');

    OPEN c;
    FETCH c INTO v_id, v_number, v_type_name, v_extra;
    CLOSE c;
END;
/

