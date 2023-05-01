--- vista para conocer el inventario de los productos de joyeria----
CREATE VIEW productos_joyeria AS
SELECT id_producto, producto, precio, inventario
FROM productos
WHERE id_departamento = '7' 

--- vista para conocer el inventario de los productos de relojes----
CREATE VIEW productos_relojes AS
SELECT id_producto, producto, precio, inventario
FROM productos
WHERE id_departamento = '8' 

--- vista para conocer los empleados de joyeria----
CREATE VIEW empleados_joyeria AS
SELECT e.id_empleado, e.nombre, p.puesto, e.sueldo
FROM empleados AS e
JOIN puestos AS p
ON e.id_puesto = p.id_puesto
WHERE id_departamento = '7' ;


--- vista para conocer los empleados de relojes----
CREATE VIEW empleados_relojes AS
SELECT e.id_empleado, e.nombre, p.puesto, e.sueldo
FROM empleados AS e
JOIN puestos AS p
ON e.id_puesto = p.id_puesto
WHERE id_departamento = '8' ;

--- vista saber que productos estan en cada compra----
CREATE VIEW vista_detalle_compras AS
SELECT d.id_compra, d.id_producto, p.producto, d.cantidad, d.precio, 
FROM detalle_compras AS d
JOIN productos AS p
ON d.id_producto = p.id_producto;

--- vista saber cuanto se vendio en total----
CREATE VIEW ventas_totales AS
SELECT d.cantidad, d. precio, v.fecha 
FROM detalle_ventas as d
JOIN ventas AS v
ON d.id_venta = v.id_venta;

--- vista saber los IDs completos de las ventas----
CREATE VIEW ventas_detalladas AS
SELECT d.id_producto, p.producto, p.id_marca, p.id_temporada, p.id_color,p.id_categoria, d.cantidad, d.precio
FROM detalle_ventas as d
JOIN productos AS p
ON d.id_producto = p.id_producto;

--- vista saber TODOS los detalles de las ventas----
CREATE VIEW ventas_completas AS
SELECT v.producto, m.marca, t.temporada, c.color, cat.categorias, v.cantidad, v.precio
FROM ventas_detalladas as v
JOIN marcas AS m
ON v.id_marca = m.id_marca
JOIN temporadas AS t
ON v.id_temporada = t.id_temporada
JOIN colores AS c
ON v.id_color = c.id_color
JOIN categorias AS cat
ON v.id_categoria = cat.id_categoria;