SELECT COUNT(DISTINCT p.id) AS total_clientes_compras
FROM GE.PEOPLE p
INNER JOIN GE.BUY b ON p.id = b.id_people
WHERE p.id_type_people = 1; -- Tipo Cliente