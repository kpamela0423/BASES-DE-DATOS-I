USE PROYECTO;

---CONSULTAS
/* i. Edad promedio de los clientes */
SELECT  
AVG(CAST(FLOOR(DATEDIFF(DD, fecha_nacimiento, GETDATE())/365.25) AS INT))
FROM Clientes;

/* ii. 10 productos más vendidos */
Select TOP 10 SUM(cantidad_producto) AS Vendido,  COMPRAS.Id_Producto, P.Nombre_Producto from COMPRAS 
INNER JOIN Productos p ON Compras.Id_Producto = p.Id_Producto
GROUP BY COMPRAS.Id_Producto, P.Nombre_Producto

/* iii. Cantidad de productos por categoría */
SELECT id_Categoria, count(id_Categoria) as Total  FROM Productos group by id_Categoria

/* iv. Listar los productos más bajos en ventas */
Select TOP 10 MIN(cantidad_producto) AS MINIMO, COMPRAS.Id_Producto, P.Nombre_Producto from COMPRAS 
INNER JOIN Productos p ON Compras.Id_Producto = p.Id_Producto
GROUP BY COMPRAS.Id_Producto, P.Nombre_Producto, cantidad_producto
ORDER BY cantidad_producto ASC

/* v. Listado de productos agrupados por categoría*/
SELECT Id_Producto, Nombre_Producto, id_Categoria FROM Productos GROUP BY id_Categoria, Id_Producto, Nombre_Producto

--VISTAS

/* i. Reporte mensual de ventas por sucursal */
CREATE VIEW Reporte_sucursal_mensual AS
SELECT SUM(cantidad_producto * p.Precio_venta ) AS Total, i.id_Farmacia  from Compras c
INNER JOIN Productos p ON c.Id_Producto = p.Id_Producto
INNER JOIN Inventario i on c.Id_Producto = i.Id_Producto
GROUP BY p.Precio_venta, i.id_Farmacia

SELECT * from Reporte_sucursal_mensual;

/* ii. Reporte de ventas mensual por producto*/
CREATE VIEW Reporte_ventas_mensual AS
SELECT SUM(cantidad_producto * p.Precio_venta) AS Total, C.Id_Producto from Compras c
INNER JOIN Productos p ON c.Id_Producto = p.Id_Producto
GROUP BY C.Id_Producto

SELECT * FROM Reporte_ventas_mensual

/*iii. Total ventas por categoría*/
CREATE VIEW Ventas_por_categoría AS
SELECT SUM(cantidad_producto * p.Precio_venta) AS Ventas, P.id_Categoria from Compras c
INNER JOIN Productos p ON c.Id_Producto = p.Id_Producto
GROUP BY P.id_Categoria

SELECT * FROM Ventas_por_categoría

/* iv. Productos en el inventario con cantidad menor que 10 unidades por sucursal*/
CREATE VIEW cantidad AS
SELECT id_Farmacia, Id_Producto, cantidad FROM Inventario where cantidad < 10 
GROUP BY id_Farmacia, Id_Producto, cantidad

SELECT * FROM cantidad

/* v. Listado de clientes que no han realizado ningún pedido durante el mes */
CREATE VIEW clientes_compra AS
SELECT Clientes.id_Cliente, c.fecha_compra
FROM Clientes 
INNER JOIN Compras c ON Clientes.id_Cliente = c.id_Cliente
where c.fecha_compra between '7/1/2021' and '7/31/2021' 
GROUP by Clientes.id_Cliente, fecha_compra

SELECT * FROM clientes_compra

--Procedimientos almacenados
/* i.Función para búsqueda de clientes por nombre*/
CREATE FUNCTION fn_buscar_cliente(@nombre varchar(30))
returns table 
AS RETURN (SELECT id_Cliente, nombre, usuario FROM Clientes WHERE nombre = @nombre)

SELECT * FROM fn_buscar_cliente('Milton')

/* ii.Eliminar clientes por id*/
CREATE PROCEDURE Eliminar_Cliente @id_cliente int
AS
DELETE FROM Farmacia_Cliente WHERE id_Cliente = @id_cliente
DELETE FROM clientes WHERE id_Cliente = @id_cliente

EXECUTE Eliminar_Cliente @id_cliente = 32;

/* iii. Actualizar clientes por id*/
CREATE PROCEDURE Actualizar_Cliente @id_cliente int, @nombre varchar(30)
AS
UPDATE Clientes set nombre = @nombre where id_Cliente = @id_cliente
EXECUTE Actualizar_Cliente @id_cliente = 50, @nombre = 'Milton'

/* iv. Listado de todos los pedidos realizados por un cliente */
CREATE PROCEDURE pedidos_Cliente @id_cliente int
AS
SELECT count(id_cliente) FROM compras where id_cliente = @id_cliente

EXECUTE pedidos_Cliente @id_cliente = 14

/* v. Total de ventas de un producto en una fecha determinada */
CREATE PROCEDURE venta_fecha @fecha date
AS
SELECT count(compras.Id_Producto) AS ventas, SUM(cantidad_producto * p.Precio_venta) AS Total FROM compras 
INNER JOIN Productos p ON compras.Id_Producto = p.Id_Producto
where fecha_compra = @fecha


EXECUTE venta_fecha @fecha = '11/26/2021'

