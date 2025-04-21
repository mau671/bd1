-- 08.sql - Conteo de Clientes que han Realizado Compras
-- 
-- Descripción: Esta consulta calcula el número total de clientes únicos
-- que han realizado al menos una compra en el sistema. Utiliza DISTINCT 
-- para asegurar que cada cliente se cuente una sola vez, independientemente
-- del número de compras que haya realizado.
-- 
-- Tablas utilizadas:
-- - PEOPLE: Información de las personas (incluye clientes)
-- - BUY: Registro de compras realizadas por los clientes
-- 
-- Filtros:
-- - id_type_people = 1: Asegura que solo se consideren personas de tipo Cliente
-- 
-- Resultado:
-- - total_clientes_compras: Cantidad total de clientes distintos que han realizado compras
SELECT COUNT(DISTINCT p.id) AS total_clientes_compras
FROM GE.PEOPLE p
INNER JOIN GE.BUY b ON p.id = b.id_people
WHERE p.id_type_people = 1; -- Tipo Cliente