-- Crear el esquema UN
CREATE USER TA 
    IDENTIFIED BY ta
    DEFAULT TABLESPACE GE_Data
    QUOTA 10M ON GE_Data
    TEMPORARY TABLESPACE temp
    QUOTA 5M ON SYSTEM
    QUOTA 10M ON GE_Index;

GRANT CONNECT to ta;

-- Se le da permiso a ta de seleccionar en la tabla Department de GE a través de CU
GRANT select ON GE.DEPARTMENT TO TA WITH GRANT OPTION.

-- ¿Cuál es la diferencia entre esta instrucción y solo grant select on departamento to TA? 
-- La instrucción con "WITH GRANT OPTION" permite que TA pueda otorgar el permiso de selección a otros usuarios, mientras que sin esa opción, TA solo puede seleccionar datos de la tabla pero no puede otorgar ese permiso a otros.
