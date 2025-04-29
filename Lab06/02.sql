/**
 * Script de Prueba para el Procedimiento get_person_phones
 * ------------------------------------------------------
 * Descripción:
 *   Este script demuestra el uso del procedimiento ge.get_person_phones
 *   mediante dos casos de prueba distintos que muestran la flexibilidad
 *   del procedimiento para filtrar o mostrar todos los teléfonos de una persona.
 *
 * Casos de prueba:
 *   1. Filtrar por tipo de teléfono: 
 *      Muestra solo los teléfonos tipo "Celular" (ID=2) de la persona con ID 2
 *
 *   2. Sin filtro de tipo:
 *      Muestra todos los teléfonos de la persona con ID 2, sin importar su tipo
 *
 * Formato de salida:
 *   ID    Número          Tipo
 *   --    ------          ----
 *   (Datos formateados en columnas con ancho fijo)
 */
SET SERVEROUTPUT ON;
DECLARE
    v_rc        SYS_REFCURSOR;
    v_id        ge.phone.id%TYPE;
    v_number    ge.phone.phone_number%TYPE;
    v_type_name ge.type_phone.name%TYPE;
BEGIN
    DBMS_OUTPUT.put_line('--- Prueba #1: Teléfonos Celular de la persona 2 ---');
    
    -- El tipo "Celular" tiene id = 2
    ge.get_person_phones(
        p_person_id     => 2,
        p_type_phone_id => 2,
        p_result        => v_rc
    );
    
    LOOP
        FETCH v_rc INTO v_id, v_number, v_type_name;
        EXIT WHEN v_rc%NOTFOUND;
        DBMS_OUTPUT.put_line(
            RPAD(v_id,5)||'  '||RPAD(v_number,15)||'  '||v_type_name
        );
    END LOOP;
    CLOSE v_rc;
    
    DBMS_OUTPUT.put_line(CHR(10)||'--- Prueba #2: TODOS los teléfonos de la persona 2 ---');
    
    -- Esta vez sin filtrar por tipo
    ge.get_person_phones(
        p_person_id     => 2,
        p_type_phone_id => NULL,
        p_result        => v_rc
    );
    
    LOOP
        FETCH v_rc INTO v_id, v_number, v_type_name;
        EXIT WHEN v_rc%NOTFOUND;
        DBMS_OUTPUT.put_line(
            RPAD(v_id,5)||'  '||RPAD(v_number,15)||'  '||v_type_name
        );
    END LOOP;
    CLOSE v_rc;
END;
/
