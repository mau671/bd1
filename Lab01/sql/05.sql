-- 5. Crear los constraints correspondientes
ALTER TABLE GE.People ADD CONSTRAINT chk_birth_date CHECK (birth_date <= SYSDATE);
ALTER TABLE GE.Phone ADD CONSTRAINT unq_phone_number UNIQUE (phone_number) USING INDEX TABLESPACE GE_Index;