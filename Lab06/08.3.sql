SET SERVEROUTPUT ON;

DECLARE
    v_cursor SYS_REFCURSOR;
    v_id     UN.STUDENT.id_student%TYPE;
    v_name   UN.COURSE.course_name%TYPE;
    v_estado UN.STATUS.status_name%TYPE;
BEGIN
    -- Obtener cursos aprobados por el estudiate
    DBMS_OUTPUT.put_line('--- Cursos Aprobados del Estudiante 1 ---');
    UN.getCursos(1, 'Aprobado', v_cursor);
    LOOP
        FETCH v_cursor INTO v_id, v_name, v_estado;
        EXIT WHEN v_cursor%NOTFOUND;
        DBMS_OUTPUT.put_line('ID: ' || v_id || ' | Curso: ' || v_name || ' | Estado: ' || v_estado);
    END LOOP;
    CLOSE v_cursor;

    -- Todos los coursos del estudiente
    DBMS_OUTPUT.put_line(CHR(10) || '--- Todos los cursos del Estudiante 1 ---');
    UN.getCursos(1, NULL, v_cursor);
    LOOP
        FETCH v_cursor INTO v_id, v_name, v_estado;
        EXIT WHEN v_cursor%NOTFOUND;
        DBMS_OUTPUT.put_line('ID: ' || v_id || ' | Curso: ' || v_name || ' | Estado: ' || v_estado);
    END LOOP;
    CLOSE v_cursor;
END;
/
