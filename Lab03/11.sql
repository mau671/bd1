-- 11.sql - Clientes con más de dos compras realizadas
--
-- Descripción: Esta consulta identifica a los clientes que han realizado 
-- más de dos compras en el sistema. Resulta útil para identificar clientes 
-- frecuentes o habituales que podrían ser candidatos para programas de fidelización
-- o análisis de patrones de consumo recurrente.
--
-- Tablas utilizadas:
-- - PEOPLE: Información de los clientes
-- - BUY: Registro de transacciones de compra
--
-- Filtros:
-- - id_type_people = 1: Solo se consideran registros de tipo Cliente
-- - HAVING COUNT(*) > 2: Solo se incluyen clientes con más de 2 compras
--
-- Ordenamiento:
-- - Por cantidad de compras descendente (clientes más frecuentes primero)
-- 
-- Resultados:
-- - id_cliente: Identificador único del cliente 
-- - nombre: Nombre completo del cliente (nombre + apellido)
-- - cantidad_compras: Total de transacciones realizadas por el cliente
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
