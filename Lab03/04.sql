---
    ---Descripción:
    --- Se obtiene la cantidad total de números por persona.
---
SELECT p.id, p.first_name, COUNT(pp.id_phone) AS phone_count
FROM ge.people p
LEFT JOIN ge.phonexpeople pp ON p.id = pp.id_people
GROUP BY p.id, p.first_name
ORDER BY p.id;