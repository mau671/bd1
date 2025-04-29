CREATE TABLESPACE UN_Data
    DATAFILE 'C:\app\dilan\oradata\DBProyecto\un_data01.dbf'
    SIZE 10M
    REUSE
    AUTOEXTEND ON
    NEXT 512k
    MAXSIZE 200M;

CREATE TABLESPACE UN_Ind
    DATAFILE 'C:\app\dilan\oradata\DBProyecto\un_ind01.dbf'
    SIZE 10M
    REUSE
    AUTOEXTEND ON
    NEXT 512k
    MAXSIZE 200M;
    

CREATE USER UN
    IDENTIFIED BY UN
    DEFAULT TABLESPACE UN_Data
    QUOTA 10M ON UN_Data
    TEMPORARY TABLESPACE temp
    QUOTA 5 ON system;
    
GRANT CONNECT TO UN;
GRANT CREATE session to UN;
GRANT CREATE table to UN;
GRANT CREATE SEQUENCE to UN;
GRANT CREATE PROCEDURE to UN;

CREATE TABLE UN.COURSE
(
    id_course NUMBER(6) PRIMARY KEY,
    course_name VARCHAR(20) CONSTRAINT course_name_nn NOT NULL
)
TABLESPACE UN_Data
STORAGE
(
    INITIAL 6144
    NEXT 6144
    MINEXTENTS 1
    MAXEXTENTS 5
);

CREATE TABLE UN.STUDENT
(
    id_student NUMBER(6) PRIMARY KEY,
    first_name VARCHAR(20) CONSTRAINT first_name_nn NOT NULL,
    second_name VARCHAR(20) CONSTRAINT second_name_nn NOT NULL,
    first_surname VARCHAR(20) CONSTRAINT first_surname_nn NOT NULL,
    second_surname VARCHAR(20) CONSTRAINT second_surname_nn NOT NULL,
    mail VARCHAR(20) CONSTRAINT mail_nn NOT NULL,
    university_card NUMBER,
    CONSTRAINT chk_university_card CHECK (university_card BETWEEN 1000000000 AND 9999999999)
)
TABLESPACE UN_Data
STORAGE
(
    INITIAL 6144
    NEXT 6144
    MINEXTENTS 1
    MAXEXTENTS 5
);

CREATE TABLE UN.STUDENT_X_COURSE
(
    id NUMBER(6) PRIMARY KEY,
    id_course NUMBER,
    id_student NUMBER,
    CONSTRAINT fk_student_course FOREIGN KEY (id_course) REFERENCES UN.COURSE(id_course),
    CONSTRAINT fk_course_student FOREIGN KEY (id_student) REFERENCES UN.STUDENT(id_student)
)
TABLESPACE UN_Data
STORAGE
(
    INITIAL 6144
    NEXT 6144
    MINEXTENTS 1
    MAXEXTENTS 5
);

CREATE TABLE UN.STATUS
(
    id_status NUMBER(6) PRIMARY KEY,
    status_name VARCHAR(20),
    id_studentxcourse NUMBER,
    CONSTRAINT fk_statusxstudentxcourse FOREIGN KEY (id_studentxcourse) REFERENCES UN.STUDENT_X_COURSE(id)
)
TABLESPACE UN_Data
STORAGE
(
    INITIAL 6144
    NEXT 6144
    MINEXTENTS 1
    MAXEXTENTS 5
);
