CREATE OR REPLACE PROCEDURE UN.getCursos (
    p_id_student     IN UN.STUDENT.id_student%TYPE,
    p_estado         IN UN.STATUS.status_name%TYPE,
    c_resultados     OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN c_resultados FOR
        SELECT s.id_student,
               c.course_name,
               st.status_name
        FROM UN.STUDENT s
        JOIN UN.STUDENT_X_COURSE sc ON s.id_student = sc.id_student
        JOIN UN.COURSE c ON sc.id_course = c.id_course
        JOIN UN.STATUS st ON st.id_studentxcourse = sc.id
        WHERE s.id_student = p_id_student
          AND (st.status_name = NVL(p_estado, st.status_name));
END;
/
