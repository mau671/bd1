/**
 * Procedimiento: get_person_phones
 * ------------------------------
 * Descripción:
 *   Este procedimiento permite obtener los teléfonos asociados a una persona
 *   específica, con la opción de filtrar por tipo de teléfono.
 *
 * Parámetros:
 *   p_person_id     - IN  - ID de la persona cuyos teléfonos se desean consultar.
 *   p_type_phone_id - IN  - ID del tipo de teléfono por el cual filtrar (opcional).
 *                         - Si es NULL, se retornan todos los teléfonos.
 *   p_result        - OUT - Cursor que contendrá los resultados de la consulta.
 *
 * Resultados:
 *   El cursor devuelve las siguientes columnas:
 *     - id: Identificador único del teléfono
 *     - phone_number: Número telefónico
 *     - type_name: Nombre del tipo de teléfono (Casa, Celular, etc.)
 *
 * Tablas utilizadas:
 *   - ge.phonexpeople: Relación entre personas y teléfonos
 *   - ge.phone: Datos de teléfonos
 *   - ge.type_phone: Tipos de teléfonos disponibles
 */
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
