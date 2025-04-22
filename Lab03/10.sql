-- 10.sql - Listado de Productos Comprados por Cliente
-- 
-- Descripción: Esta consulta genera un informe detallado que muestra todos los productos 
-- que cada cliente ha adquirido a lo largo del tiempo. Utiliza la función LISTAGG para 
-- consolidar múltiples productos en una única cadena de texto separada por comas, 
-- facilitando la visualización del historial de compras por cliente.
--
-- Tablas utilizadas:
-- - PEOPLE: Información de los clientes
-- - BUY: Registro de transacciones de compra
-- - CART: Carritos de compra
-- - PRODUCTXCART: Relación entre productos y carritos
-- - PRODUCT: Información de productos
--
-- Filtros:
-- - id_type_people = 1: Solo se consideran registros de tipo Cliente
--
-- Técnicas especiales:
-- - DISTINCT: Evita duplicados si un cliente compró el mismo producto múltiples veces
-- - LISTAGG: Concatena los nombres de productos en una sola cadena
--
-- Resultados:
-- - id_cliente: Identificador único del cliente
-- - nombre: Nombre completo del cliente (nombre + apellido)
-- - productos_comprados: Lista consolidada de todos los productos adquiridos
SELECT
    datos.id_cliente,
    datos.nombre,
    LISTAGG(datos.producto, ', ')
        WITHIN GROUP (ORDER BY datos.producto) AS productos_comprados
FROM (
    /* ——— sub‑consulta que quita duplicados ——— */
    SELECT DISTINCT
        p.id                                   AS id_cliente,
        p.first_name || ' ' || p.first_surname AS nombre,
        pr.name                                AS producto
    FROM   GE.PEOPLE        p
    JOIN   GE.BUY           b  ON b.id_people = p.id
    JOIN   GE.CART          c  ON c.id        = b.id_cart
    JOIN   GE.PRODUCTXCART  pc ON pc.id_cart  = c.id
    JOIN   GE.PRODUCT       pr ON pr.id       = pc.id_product
    WHERE  p.id_type_people = 1                     -- solo clientes
) datos
GROUP BY
    datos.id_cliente,
    datos.nombre
ORDER BY
    datos.id_cliente;
