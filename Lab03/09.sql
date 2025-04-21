---
    ---Descripción:
    --- Se utiliza la función COUNT para obtener la cantidad total de
    --- clientes en la tabla ge.people
---
SELECT COUNT(1) AS total_clientes
FROM ge.people p
WHERE p.id_type_people = 2;