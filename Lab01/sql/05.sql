ALTER TABLE GE.People 
    MODIFY first_name CONSTRAINT people_firstName_nn NOT NULL;

ALTER TABLE GE.Phone 
    MODIFY phone_number CONSTRAINT phone_number_nn NOT NULL;

ALTER TABLE GE.PhonexPeople 
    ADD CONSTRAINT fk_phonexpeople_phone 
    FOREIGN KEY (phone_id) 
    REFERENCES GE.Phone(id_phone);

ALTER TABLE GE.PhonexPeople 
    ADD CONSTRAINT fk_phonexpeople_person 
    FOREIGN KEY (person_id) 
    REFERENCES GE.People(id_people);
