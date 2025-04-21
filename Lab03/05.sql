-- 05.sql
SELECT p.*
FROM GE.PEOPLE p
JOIN GE.PHONEXPEOPLE pxp ON p.id = pxp.id_people
JOIN GE.PHONE ph ON ph.id = pxp.id_phone
JOIN GE.TYPE_PHONE tp ON tp.id = ph.id_type_phone
WHERE LOWER(tp.name) = 'casa';
