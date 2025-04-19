
-- Crear los tablespaces GE_Data y GE_Index
CREATE TABLESPACE GE_Data
    DATAFILE 'C:\app\hidal\oradata\LIGHTNING\Lab2\gedata01.dbf'
    SIZE 10M
    REUSE
    AUTOEXTEND ON
    NEXT 512k
    MAXSIZE 200M;

CREATE TABLESPACE GE_Ind
    DATAFILE 'C:\app\hidal\oradata\LIGHTNING\Lab2\geind01.dbf'
    SIZE 10M
    REUSE
    AUTOEXTEND ON
    NEXT 512k
    MAXSIZE 200M;

-- 2. Crear el esquema GE
CREATE USER GE 
    IDENTIFIED BY ge
    DEFAULT TABLESPACE GE_Data
    QUOTA 10M ON GE_Data
    TEMPORARY TABLESPACE temp
    QUOTA 5M ON SYSTEM
    QUOTA 10M ON GE_Ind;

GRANT CONNECT to GE;
GRANT CREATE SESSION to GE;
GRANT CREATE TABLE to GE;

-- ============================================
-- 1. Tabla TYPE_PHONE
-- ============================================
CREATE TABLE GE.TYPE_PHONE (
    id    NUMBER CONSTRAINT pk_TYPE_PHONE PRIMARY KEY
            USING INDEX TABLESPACE GE_Ind
            STORAGE (
                INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
            ),
    name  VARCHAR2(50) CONSTRAINT type_phone_name_nn NOT NULL
) TABLESPACE GE_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );

-- ============================================
-- 2. Tabla PHONE
-- ============================================
CREATE TABLE GE.PHONE (
    id             NUMBER CONSTRAINT pk_PHONE PRIMARY KEY
                     USING INDEX TABLESPACE GE_Ind
                     STORAGE (
                         INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
                     ),
    phone_number   VARCHAR2(20) CONSTRAINT phone_number_nn NOT NULL,
    id_type_phone  NUMBER CONSTRAINT phone_id_type_phone_nn NOT NULL,
    CONSTRAINT fk_PHONE_TYPE_PHONE 
        FOREIGN KEY (id_type_phone) REFERENCES GE.TYPE_PHONE(id)
) TABLESPACE GE_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );


-- ============================================
-- 3. Tabla PEOPLE
-- ============================================
CREATE TABLE GE.PEOPLE (
    id             NUMBER CONSTRAINT pk_PEOPLE PRIMARY KEY
                     USING INDEX TABLESPACE GE_Ind
                     STORAGE (
                         INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
                     ),
    first_name     VARCHAR2(50) CONSTRAINT people_first_name_nn NOT NULL,
    second_name    VARCHAR2(50),
    first_surname  VARCHAR2(50) CONSTRAINT people_first_surname_nn NOT NULL,
    second_surname VARCHAR2(50),
    salary         NUMBER(10,2),
    birthday       DATE
) TABLESPACE GE_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );

-- ============================================
-- 4. Tabla PHONEXPEOPLE
-- ============================================
CREATE TABLE GE.PHONEXPEOPLE (
    id_people  NUMBER CONSTRAINT phonexpeople_id_people_nn NOT NULL,
    id_phone   NUMBER CONSTRAINT phonexpeople_id_phone_nn NOT NULL,
    CONSTRAINT pk_PHONEXPEOPLE PRIMARY KEY (id_people, id_phone)
       USING INDEX TABLESPACE GE_Ind
       STORAGE (
           INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
       ),
    CONSTRAINT fk_PHONEXPEOPLE_PEOPLE
       FOREIGN KEY (id_people) REFERENCES GE.PEOPLE(id),
    CONSTRAINT fk_PHONEXPEOPLE_PHONE
       FOREIGN KEY (id_phone) REFERENCES GE.PHONE(id)
) TABLESPACE GE_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );
-- ============================================
-- 5. Tabla TYPE_PEOPLE
-- ============================================
CREATE TABLE TYPE_PEOPLE (
    id    NUMBER CONSTRAINT pk_TYPE_PEOPLE PRIMARY KEY
            USING INDEX TABLESPACE GE_Ind
            STORAGE (
                INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
            ),
    name  VARCHAR2(50) CONSTRAINT type_people_name_nn NOT NULL
) TABLESPACE GE_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );

-- ============================================
-- 6. Relación PEOPLE - TYPE_PEOPLE
-- ============================================
ALTER TABLE PEOPLE ADD (
    id_type_people NUMBER CONSTRAINT people_id_type_people_nn NOT NULL,
    CONSTRAINT fk_PEOPLE_TYPE_PEOPLE 
        FOREIGN KEY (id_type_people) REFERENCES TYPE_PEOPLE(id)
);

-- ============================================
-- 7. Tabla PRODUCT
-- ============================================
CREATE TABLE PRODUCT (
    id   NUMBER CONSTRAINT pk_PRODUCT PRIMARY KEY
            USING INDEX TABLESPACE GE_Ind
            STORAGE (
                INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
            ),
    name VARCHAR2(100) CONSTRAINT product_name_nn NOT NULL
) TABLESPACE GE_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );

-- ============================================
-- 8. Tabla CART
-- ============================================
CREATE TABLE CART (
    id             NUMBER CONSTRAINT pk_CART PRIMARY KEY
                     USING INDEX TABLESPACE GE_Ind
                     STORAGE (
                         INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
                     ),
    date_purchase       DATE
) TABLESPACE GE_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );
-- ============================================
-- 9. Tabla BUY (Relación PEOPLE - CART)
-- ============================================
CREATE TABLE BUY (
    id_people  NUMBER CONSTRAINT buy_id_people_nn NOT NULL,
    id_product NUMBER CONSTRAINT buy_id_product_nn NOT NULL,
    CONSTRAINT pk_BUY PRIMARY KEY (id_people, id_product)
       USING INDEX TABLESPACE GE_Ind
       STORAGE (
           INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
       ),
    CONSTRAINT fk_BUY_PEOPLE
       FOREIGN KEY (id_people) REFERENCES PEOPLE(id),
    CONSTRAINT fk_BUY_PRODUCT
       FOREIGN KEY (id_product) REFERENCES PRODUCT(id)
) TABLESPACE GE_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );

-- ============================================
-- Cambiar la relación de la tabla BUY-PRODUCT a BUY-CART
-- ============================================  
ALTER TABLE GE.BUY DROP CONSTRAINT fk_BUY_PRODUCT;
ALTER TABLE GE.BUY
    ADD CONSTRAINT fk_BUY_CART FOREIGN KEY (id_product)
    REFERENCES CART(id);
ALTER TABLE GE.BUY RENAME COLUMN id_product TO id_cart;

-- ============================================
-- 9. Tabla PRODUCTXCART
-- ============================================
CREATE TABLE PRODUCTXCART (
    id_cart  NUMBER CONSTRAINT productxcart_id_cart_nn NOT NULL,
    id_product NUMBER CONSTRAINT productxcart_id_product_nn NOT NULL,
    CONSTRAINT pk_PRODUCTXCART PRIMARY KEY (id_cart, id_product)
       USING INDEX TABLESPACE GE_Ind
       STORAGE (
           INITIAL 10K NEXT 10K MINEXTENTS 1 MAXEXTENTS UNLIMITED PCTINCREASE 0
       ),
    CONSTRAINT fk_PRODUCTXCART_CART
       FOREIGN KEY (id_cart) REFERENCES CART(id),
    CONSTRAINT fk_PRODUCTXCART_PRODUCT
       FOREIGN KEY (id_product) REFERENCES PRODUCT(id)
) TABLESPACE GE_Data
  STORAGE (
      INITIAL 6144 NEXT 6144 MINEXTENTS 1 MAXEXTENTS 5
  );