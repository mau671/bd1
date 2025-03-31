-- 4. Crear la llave primaria en el tablespace de índices
ALTER TABLE GE.People ADD CONSTRAINT pk_people PRIMARY KEY (person_id) USING INDEX TABLESPACE GE_Index;
ALTER TABLE GE.Phone ADD CONSTRAINT pk_phone PRIMARY KEY (phone_id) USING INDEX TABLESPACE GE_Index;
