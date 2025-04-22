-- 11. Clientes con más de dos compras realizadas
SELECT
    p.id                                   AS id_cliente,
    p.first_name || ' ' || p.first_surname AS nombre,
    COUNT(*)                               AS cantidad_compras
FROM   GE.PEOPLE p
JOIN   GE.BUY   b ON b.id_people = p.id
WHERE  p.id_type_people = 1               -- solo clientes
GROUP  BY p.id, p.first_name, p.first_surname
HAVING COUNT(*) > 2                       -- más de dos compras
ORDER  BY cantidad_compras DESC;
