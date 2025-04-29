---
    ---Descripción:
    --- Cuando en el fetch del test los campos tienen diferente dominio
    --- del que está obteniendo el cursor, se genera un error
    --- donde se muestra que los tipos no son los mismos entre el fetch y las variables
---
SET SERVEROUTPUT ON;
DECLARE
    CURSOR c IS
        SELECT p.id, p.phone_number, tp.name
        FROM ge.phone p
        JOIN ge.type_phone tp ON p.id_type_phone = tp.id
        WHERE p.id = 2 AND p.id_type_phone = 2;

    -- ❌ Tipos incorrectos a propósito
    v_id        VARCHAR2(100);  -- debería ser NUMBER
    v_number    BOOLEAN;           -- debería ser VARCHAR2
    v_type_name BOOLEAN;         -- debería ser VARCHAR2
BEGIN
    DBMS_OUTPUT.put_line('--- Prueba Punto 5: TIPOS DE DATOS INCOMPATIBLES ---');

    OPEN c;
    FETCH c INTO v_id, v_number, v_type_name;
    CLOSE c;
END;
/

