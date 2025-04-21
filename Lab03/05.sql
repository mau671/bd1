-- 05.sql
SELECT DISTINCT p.* 
FROM GE.PEOPLE p
INNER JOIN GE.PHONEXPEOPLE pp ON p.id = pp.id_people
INNER JOIN GE.PHONE ph ON pp.id_phone = ph.id
INNER JOIN GE.TYPE_PHONE tp ON ph.id_type_phone = tp.id
WHERE tp.name = 'Casa';