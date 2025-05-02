CREATE OR REPLACE PACKAGE staff_package IS
  PROCEDURE newStaff(
    p_employee_id     NUMBER,
    p_first_name      VARCHAR2,
    p_second_name     VARCHAR2,
    p_first_surname   VARCHAR2,
    p_second_surname  VARCHAR2,
    p_salary          NUMBER,
    p_birthday        DATE
  );
END staff_package;
/

CREATE OR REPLACE PACKAGE BODY staff_package IS
  PROCEDURE newStaff(
    p_employee_id     NUMBER,
    p_first_name      VARCHAR2,
    p_second_name     VARCHAR2,
    p_first_surname   VARCHAR2,
    p_second_surname  VARCHAR2,
    p_salary          NUMBER,
    p_birthday        DATE
  ) IS
  BEGIN
    INSERT INTO STAFF(ID, FIRST_NAME, SECOND_NAME, FIRST_SURNAME, SECOND_SURNAME, SALARY, BIRTHDAY)
    VALUES(p_employee_id, p_first_name, p_second_name, p_first_surname, p_second_surname, p_salary, p_birthday);
    COMMIT;
  END newStaff;
END staff_package;
/
