-- 3. Crear las tablas en el esquema GE
CREATE TABLE GE.People (
    person_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    birth_date DATE
) TABLESPACE GE_Data;

CREATE TABLE GE.Phone (
    phone_id NUMBER PRIMARY KEY,
    person_id NUMBER,
    phone_number VARCHAR2(20) NOT NULL,
    CONSTRAINT fk_phone_person FOREIGN KEY (person_id) REFERENCES GE.People(person_id)
) TABLESPACE GE_Data;