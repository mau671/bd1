-- 7. Crear las tablas del esquema AD según el requerimiento

-- Tabla Food_Type
CREATE TABLE AD.Food_Type (
    food_type_id  NUMBER CONSTRAINT pk_Food_Type PRIMARY KEY 
                  USING INDEX TABLESPACE AD_Index 
                  STORAGE (
                      INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
                  ),
    name          VARCHAR2(50) CONSTRAINT Food_Type_name_nn NOT NULL
) TABLESPACE AD_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );

-- Tabla People
CREATE TABLE AD.People (
    id_people      NUMBER CONSTRAINT pk_People PRIMARY KEY 
                   USING INDEX TABLESPACE AD_Index 
                   STORAGE (
                       INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
                   ),
    first_name     VARCHAR2(50) CONSTRAINT people_firstName_nn NOT NULL,
    second_name    VARCHAR2(50),
    first_surname  VARCHAR2(50) CONSTRAINT people_firstSurname_nn NOT NULL,
    second_surname VARCHAR2(50)
) TABLESPACE AD_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );

-- Tabla Food
CREATE TABLE AD.Food (
    food_id       NUMBER CONSTRAINT pk_Food PRIMARY KEY 
                  USING INDEX TABLESPACE AD_Index 
                  STORAGE (
                      INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
                  ),
    name          VARCHAR2(100) CONSTRAINT Food_name_nn NOT NULL,
    price         NUMBER(10,2) CONSTRAINT Food_price_chk CHECK (price > 0) NOT NULL,
    food_type_id  NUMBER CONSTRAINT fk_Food_Food_Type REFERENCES AD.Food_Type(food_type_id)
) TABLESPACE AD_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );

-- Tabla Buy
CREATE TABLE AD.Buy (
    buy_id      NUMBER CONSTRAINT pk_Buy PRIMARY KEY 
                USING INDEX TABLESPACE AD_Index 
                STORAGE (
                    INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
                ),
    date_of_buy DATE DEFAULT SYSDATE NOT NULL,
    id_person   NUMBER CONSTRAINT fk_Buy_People REFERENCES AD.People(id_people)
) TABLESPACE AD_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );

-- Tabla FoodxBuy
CREATE TABLE AD.FoodxBuy (
    food_id  NUMBER CONSTRAINT fk_FoodxBuy_Food REFERENCES AD.Food(food_id),
    buy_id   NUMBER CONSTRAINT fk_FoodxBuy_Buy REFERENCES AD.Buy(buy_id),
    amount   NUMBER CONSTRAINT FoodxBuy_amount_nn NOT NULL,
    CONSTRAINT pk_FoodxBuy PRIMARY KEY (food_id, buy_id) 
    USING INDEX TABLESPACE AD_Index
    STORAGE (
        INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
    )
) TABLESPACE AD_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );
