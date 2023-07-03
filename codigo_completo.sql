CREATE SCHEMA grupo_eluck;

USE grupo_eluck;

-- creacion de tablas

CREATE TABLE departamentos (
id_departamento INT NOT NULL,
departamento VARCHAR(50) NOT NULL,
PRIMARY KEY (id_departamento),
UNIQUE (id_departamento));

CREATE TABLE puestos (
id_puesto INT NOT NULL,
puesto VARCHAR(50) NOT NULL,
PRIMARY KEY (id_puesto),
UNIQUE (id_puesto));

CREATE TABLE empleados (
    id_empleado INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_departamento INT NOT NULL,
    id_puesto INT NOT NULL,
    sueldo FLOAT NOT NULL,
    PRIMARY KEY (id_empleado),
    UNIQUE (id_empleado),
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento),
    FOREIGN KEY (id_puesto) REFERENCES puestos(id_puesto)
);

CREATE TABLE proveedores (
id_proveedor INT NOT NULL,
proveedor VARCHAR(50) NOT NULL,
direccion VARCHAR(100) NOT NULL,
telefono VARCHAR(10) NOT NULL,
PRIMARY KEY (id_proveedor),
UNIQUE (id_proveedor));

CREATE TABLE clientes (
id_cliente INT NOT NULL,
cliente VARCHAR(50) NOT NULL,
direccion VARCHAR(100) NOT NULL,
telefono VARCHAR(10) NOT NULL,
PRIMARY KEY (id_cliente),
UNIQUE (id_cliente));

CREATE TABLE marcas (
id_marca INT NOT NULL,
marca VARCHAR(50) NOT NULL,
PRIMARY KEY (id_marca),
UNIQUE (id_marca));

CREATE TABLE temporadas (
id_temporada INT NOT NULL,
temporada VARCHAR(50) NOT NULL,
PRIMARY KEY (id_temporada),
UNIQUE (id_temporada));

CREATE TABLE categorias (
id_categoria INT NOT NULL,
categorias VARCHAR(50) NOT NULL,
PRIMARY KEY (id_categoria),
UNIQUE (id_categoria));

CREATE TABLE colores (
id_color INT NOT NULL,
color VARCHAR(50) NOT NULL,
PRIMARY KEY (id_color),
UNIQUE (id_color));

CREATE TABLE productos (
id_producto VARCHAR(100) NOT NULL,
producto VARCHAR(50) NOT NULL,
precio FLOAT NOT NULL,
inventario INT NOT NULL,
id_departamento INT NOT NULL,
id_marca INT NOT NULL,
id_temporada INT NOT NULL,
id_categoria INT NOT NULL,
id_color INT NOT NULL,
PRIMARY KEY (id_producto),
UNIQUE (id_producto),
FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento),
FOREIGN KEY (id_marca) REFERENCES marcas(id_marca),
FOREIGN KEY (id_temporada) REFERENCES temporadas(id_temporada),
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
FOREIGN KEY (id_color) REFERENCES colores(id_color));

CREATE TABLE ventas (
id_venta INT NOT NULL,
id_cliente INT NOT NULL,
id_departamento INT NOT NULL,
fecha DATE NOT NULL,
PRIMARY KEY (id_venta ),
UNIQUE (id_venta ),
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento));

CREATE TABLE compras (
id_compra INT NOT NULL,
id_proveedor INT NOT NULL,
id_departamento INT NOT NULL,
fecha DATE NOT NULL,
PRIMARY KEY (id_compra),
UNIQUE (id_compra),
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor),
FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento));

CREATE TABLE detalle_compras (
id_compra INT NOT NULL,
id_producto VARCHAR(100) NOT NULL,
cantidad INT NOT NULL,
precio FLOAT NOT NULL,
FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
FOREIGN KEY (id_compra) REFERENCES compras(id_compra));

CREATE TABLE detalle_ventas (
id_venta INT NOT NULL,
id_producto VARCHAR(100) NOT NULL,
cantidad INT NOT NULL,
precio FLOAT NOT NULL,
FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta));

--- insertar datos

INSERT INTO departamentos (id_departamento, departamento) VALUES
(1, 'Ventas'),
(2, 'Marketing'),
(3, 'Joyeria'),
(4, 'Relojes'),
(5, 'Recursos Humanos');

INSERT INTO puestos (id_puesto, puesto) VALUES
(1, 'Gerente'),
(2, 'Supervisor'),
(3, 'Asistente'),
(4, 'Data Analyst'),
(5, 'Director'),
(6, 'Contador');

INSERT INTO empleados (id_empleado, nombre, fecha_nacimiento, id_departamento, id_puesto, sueldo) VALUES
(1, 'John Doe', '1990-05-15', 1, 1, 5000),
(2, 'Jane Smith', '1992-09-20', 2, 2, 4000),
(3, 'Mike Johnson', '1988-03-10', 3, 3, 3500);

INSERT INTO proveedores (id_proveedor, proveedor, direccion, telefono) VALUES
(1, 'The Jewelry Group', 'Calle Principal 123', '1234567890'),
(2, 'Ekluck', 'Avenida Central 456', '9876543210');

INSERT INTO clientes (id_cliente, cliente, direccion, telefono) VALUES
(1, 'Liverpool', 'Calle Secundaria 789', '2345678901'),
(2, 'Palacio de Hierro', 'Avenida Norte 012', '9012345678'),
(3, 'Sears', 'Calle Secundaria 889', '2323478901'),
(4, 'Sanborns', 'Calle Secundaria 789', '996378901'),
(5, 'Coppel', 'Calle Secundaria 789', '234561257');

INSERT INTO marcas (id_marca, marca) VALUES
(1, 'Nine West'),
(2, 'DKNY'),
(3, 'GUESS'),
(4, 'Lonna & Lilly');

INSERT INTO temporadas (id_temporada, temporada) VALUES
(1, 'Verano 2022'),
(2, 'Invierno 2022'),
(3, 'Primavera 2023'),
(4, 'Verano 2023'),
(5, 'Otono 2024');

INSERT INTO categorias (id_categoria, categorias) VALUES
(1, 'Joyeria'),
(2, 'Relojes');

INSERT INTO colores (id_color, color) VALUES
(1, 'Dorado'),
(2, 'Plateado');

INSERT INTO productos (id_producto, producto, precio, inventario, id_departamento, id_marca, id_temporada, id_categoria, id_color) VALUES
('P1', 'Aretes Donatella', 19.99, 100, 3, 1, 1, 1, 1),
('P2', 'Reloj Rigor', 39.99, 50, 4, 2, 2, 2, 2),
('P3', 'Collar Elegance', 29.99, 80, 3, 1, 2, 1, 1),
('P4', 'Anillo Serenity', 24.99, 70, 3, 2, 1, 1, 2),
('P5', 'Anillo Brillante', 49.99, 30, 3, 1, 1, 1, 2),
('P6', 'Reloj Clásico', 79.99, 20, 4, 1, 2, 2, 1),
('P7', 'Aretes Urbanos', 69.99, 40, 3, 4, 1, 1, 1),
('P8', 'Reloj Primavera', 34.99, 60, 4, 3, 2, 2, 1),
('P9', 'Pulsera Casual', 49.99, 50, 3, 4, 1, 1, 1),
('P10', 'Aretes Gala', 99.99, 10, 3, 3, 2, 1, 1),
('P11', 'Pulsera Deportiva', 19.99, 90, 3, 4, 1, 1, 2),
('P12', 'Reloj Divertido', 9.99, 120, 4, 1, 2, 2, 2);

INSERT INTO ventas (id_venta, id_cliente, id_departamento, fecha) VALUES
(3, 1, 1, '2023-07-01'),
(4, 2, 1, '2023-07-02'),
(5, 1, 2, '2023-06-28'),
(6, 3, 2, '2023-06-30'),
(7, 4, 1, '2023-06-25'),
(8, 3, 2, '2023-06-27'),
(9, 2, 1, '2023-06-29'),
(10, 4, 2, '2023-06-26'),
(11, 1, 1, '2023-07-03'),
(12, 2, 2, '2023-07-04'),
(13, 3, 1, '2023-07-05'),
(14, 4, 2, '2023-07-06'),
(15, 1, 1, '2023-07-07'),
(16, 2, 2, '2023-07-08'),
(17, 3, 1, '2023-07-09');


INSERT INTO compras (id_compra, id_proveedor, id_departamento, fecha) VALUES
(3, 1, 1, '2023-07-02'),
(4, 2, 2, '2023-07-05'),
(5, 1, 1, '2023-07-08'),
(6, 2, 2, '2023-07-12'),
(7, 1, 1, '2023-07-15'),
(8, 2, 2, '2023-07-18'),
(9, 1, 1, '2023-07-21'),
(10, 2, 2, '2023-07-24'),
(11, 1, 1, '2023-07-27'),
(12, 2, 2, '2023-07-30'),
(13, 1, 1, '2023-08-02'),
(14, 2, 2, '2023-08-05'),
(15, 1, 1, '2023-08-08'),
(16, 2, 2, '2023-08-11'),
(17, 1, 1, '2023-08-14');

INSERT INTO detalle_compras (id_compra, id_producto, cantidad, precio) VALUES
(3, 'P1', 2, 39.99),
(4, 'P2', 1, 39.99),
(5, 'P3', 3, 29.99),
(6, 'P4', 1, 24.99),
(7, 'P5', 2, 49.99),
(8, 'P6', 1, 79.99),
(9, 'P7', 4, 69.99),
(10, 'P8', 2, 34.99),
(11, 'P9', 1, 49.99),
(12, 'P10', 3, 99.99);


INSERT INTO detalle_ventas (id_venta, id_producto, cantidad, precio) VALUES
(3, 'P1', 2, 39.99),
(4, 'P2', 1, 39.99),
(5, 'P3', 3, 29.99),
(6, 'P4', 1, 24.99),
(7, 'P5', 2, 49.99),
(8, 'P6', 1, 79.99),
(9, 'P7', 4, 69.99),
(10, 'P8', 2, 34.99),
(11, 'P9', 1, 49.99),
(12, 'P10', 3, 99.99);

---- Creacion de vistas


--- vista para conocer el inventario de los productos de joyeria
CREATE VIEW productos_joyeria AS
SELECT id_producto, producto, precio, inventario
FROM productos
WHERE id_departamento = '3';

--- vista para conocer el inventario de los productos de relojes
CREATE VIEW productos_relojes AS
SELECT id_producto, producto, precio, inventario
FROM productos
WHERE id_departamento = '4'; 

--- vista para conocer los empleados de joyeria
CREATE VIEW empleados_joyeria AS
SELECT e.id_empleado, e.nombre, p.puesto, e.sueldo
FROM empleados AS e
JOIN puestos AS p
ON e.id_puesto = p.id_puesto
WHERE id_departamento = '3' ;

--- vista para conocer los empleados de relojes
CREATE VIEW empleados_relojes AS
SELECT e.id_empleado, e.nombre, p.puesto, e.sueldo
FROM empleados AS e
JOIN puestos AS p
ON e.id_puesto = p.id_puesto
WHERE id_departamento = '4' ;

--- vista saber que productos estan en cada compra
CREATE VIEW vista_detalle_compras AS
SELECT d.id_compra, d.id_producto, p.producto, d.cantidad, d.precio
FROM detalle_compras AS d
JOIN productos AS p
ON d.id_producto = p.id_producto;

--- vista saber cuanto se vendio en total
CREATE VIEW ventas_totales AS
SELECT d.cantidad, d. precio, v.fecha 
FROM detalle_ventas as d
JOIN ventas AS v
ON d.id_venta = v.id_venta;

--- vista saber los IDs completos de las ventas
CREATE VIEW ventas_detalladas AS
SELECT d.id_producto, p.producto, p.id_marca, p.id_temporada, p.id_color,p.id_categoria, d.cantidad, d.precio
FROM detalle_ventas as d
JOIN productos AS p
ON d.id_producto = p.id_producto;

--- vista saber TODOS los detalles de las ventas
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

-----creacion de funciones

---funcion para sacar las ventas totales de las fechas que se requiere---
DELIMITER //
CREATE FUNCTION calcular_total_ventas(fecha_inicio DATE, fecha_fin DATE)
RETURNS DECIMAL(10,2)
DETERMINISTIC READS SQL DATA
BEGIN
  DECLARE total DECIMAL(10,2);
  SELECT SUM(precio * cantidad) INTO total
  FROM ventas_totales 
  WHERE fecha BETWEEN fecha_inicio AND fecha_fin;
  RETURN total;
END //
DELIMITER ;

---funcion para sacar las ventas totales de alguna marca en especifico ---
DELIMITER //
CREATE FUNCTION ventas_por_marca(marca_param VARCHAR(50))
RETURNS DECIMAL(10,2)
DETERMINISTIC READS SQL DATA
BEGIN
  DECLARE total DECIMAL(10,2);
  SELECT SUM(precio * cantidad) INTO total
  FROM ventas_completas 
  WHERE marca = marca_param;
  RETURN total;
END //
DELIMITER ;

----creacion store procedures

---Stored Procedure para sacar toda la informacion del producto que necesitemos
DELIMITER //
CREATE PROCEDURE buscar_productos (IN producto VARCHAR(255))
BEGIN
    SELECT producto, marca, temporada, color, categorias, cantidad, precio FROM ventas_completas 
    WHERE producto LIKE CONCAT('%', producto, '%');
END //
DELIMITER ;

---Stored Procedure para registrar una venta

DELIMITER //
CREATE PROCEDURE registrar_venta (IN id_venta INT, IN id_producto varchar(100), IN cantidad INT, IN precio DECIMAL(10,2))
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT (precio * cantidad) INTO total;

    START TRANSACTION;
    INSERT INTO detalle_ventas (id_venta, id_producto, cantidad, precio) 
    VALUES (id_venta, id_producto, cantidad, precio);
    COMMIT;
END //
DELIMITER ;

---Stored Procedure para ordenar los productos ya sea por nombre, precio etc

DELIMITER //
CREATE PROCEDURE ordenar_productos(IN orden_campo VARCHAR(50), IN orden_tipo VARCHAR(4))
BEGIN
    SET @query = CONCAT('SELECT * FROM productos ORDER BY ', orden_campo, ' ', orden_tipo, ';');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

-- creacion de triggers


CREATE TABLE AUDITORIAS (
id_log INT PRIMARY KEY auto_increment,
entity VARCHAR(100),
id_entity VARCHAR (100),
date_time  DATETIME,
created_by VARCHAR (100),
last_update_dt DATETIME,
last_updated_by VARCHAR (100)
);

DELIMITER //
CREATE TRIGGER new_product_aud
AFTER INSERT ON productos
FOR EACH ROW
BEGIN
    INSERT INTO AUDITORIAS (entity, id_entity, date_time, created_by, last_update_dt, last_updated_by)
    VALUES ('producto', NEW.id_producto, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER());
END //
DELIMITER ;


---Trigger para saber el usuario y fecha de las actualizaciones de los productos----

DELIMITER //
CREATE TRIGGER update_product_aud
AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
    INSERT INTO AUDITORIAS (entity, id_entity, date_time, created_by, last_update_dt, last_updated_by)
    VALUES ('producto', NEW.id_producto, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER());
END //
DELIMITER ;

