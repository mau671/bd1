-- 3. Crear las tablas en el esquema GE
CREATE TABLE GE.People (
    id_people NUMBER,
    first_name VARCHAR2(50),
    second_name VARCHAR2(50),
    first_surname VARCHAR2(50),
    second_surname VARCHAR2(50)
) 
TABLESPACE GE_Data
STORAGE (
    INITIAL 6144
    NEXT 6144
    MINEXTENTS 1
    MAXEXTENTS 5
);

CREATE TABLE GE.Phone (
    id_phone NUMBER,
    phone_number VARCHAR2(20)
) 
TABLESPACE GE_Data
STORAGE (
    INITIAL 6144
    NEXT 6144
    MINEXTENTS 1
    MAXEXTENTS 5
);

-- Tabla intermedia para la relación muchos a muchos entre People y Phone
CREATE TABLE GE.PhonexPeople (
    phone_id NUMBER,
    person_id NUMBER
) 
TABLESPACE GE_Data
STORAGE (
    INITIAL 6144
    NEXT 6144
    MINEXTENTS 1
    MAXEXTENTS 5
);

-- Otorgar permisos de referencia para el esquema GE
GRANT REFERENCES ON GE.Phone TO GE;
GRANT REFERENCES ON GE.People TO GE;