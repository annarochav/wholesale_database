CREATE VIEW productos_joyeria AS
SELECT id_producto, producto, precio, inventario
FROM productos
WHERE id_departamento = '7' 

CREATE VIEW productos_relojes AS
SELECT id_producto, producto, precio, inventario
FROM productos
WHERE id_departamento = '8' 

CREATE VIEW empleados_joyeria AS
SELECT e.id_empleado, e.nombre, p.puesto, e.sueldo
FROM empleados AS e
JOIN puestos AS p
ON e.id_puesto = p.id_puesto
WHERE id_departamento = '7' ;

CREATE VIEW empleados_relojes AS
SELECT e.id_empleado, e.nombre, p.puesto, e.sueldo
FROM empleados AS e
JOIN puestos AS p
ON e.id_puesto = p.id_puesto
WHERE id_departamento = '8' ;

CREATE VIEW vista_detalle_compras AS
SELECT d.id_compra, d.id_producto, p.producto, d.cantidad, d.precio, 
FROM detalle_compras AS d
JOIN productos AS p
ON d.id_producto = p.id_producto;
