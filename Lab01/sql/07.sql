-- 7. Crear las tablas del esquema AD según el requerimiento
CREATE TABLE AD.Food (
    food_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    price NUMBER(10,2) NOT NULL CHECK (price > 0)
) TABLESPACE GE_Data;

CREATE TABLE AD.Order (
    order_id NUMBER PRIMARY KEY,
    person_id NUMBER,
    order_date DATE DEFAULT SYSDATE,
    total_price NUMBER(10,2) NOT NULL CHECK (total_price >= 0),
    CONSTRAINT fk_order_person FOREIGN KEY (person_id) REFERENCES GE.People(person_id)
) TABLESPACE GE_Data;

CREATE TABLE AD.OrderDetail (
    order_detail_id NUMBER PRIMARY KEY,
    order_id NUMBER,
    food_id NUMBER,
    quantity NUMBER CHECK (quantity > 0),
    price_per_item NUMBER(10,2) NOT NULL CHECK (price_per_item > 0),
    total_price NUMBER(10,2) NOT NULL CHECK (total_price >= 0),
    CONSTRAINT fk_orderdetail_order FOREIGN KEY (order_id) REFERENCES AD.Order(order_id),
    CONSTRAINT fk_orderdetail_food FOREIGN KEY (food_id) REFERENCES AD.Food(food_id)
) TABLESPACE GE_Data;