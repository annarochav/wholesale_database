---Stored Procedure para sacar toda la informacion del producto que necesitemos---
DELIMITER //
CREATE PROCEDURE buscar_productos (IN producto VARCHAR(255))
BEGIN
    SELECT producto, marca, temporada, color, categorias, cantidad, precio FROM ventas_completas 
    WHERE producto LIKE CONCAT('%', producto, '%');
END //
DELIMITER ;

---Stored Procedure para registrar una venta---

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

---Stored Procedure para ordenar los productos ya sea por nombre, precio etc---

DELIMITER //
CREATE PROCEDURE ordenar_productos(IN orden_campo VARCHAR(50), IN orden_tipo VARCHAR(4))
BEGIN
    SET @query = CONCAT('SELECT * FROM productos ORDER BY ', orden_campo, ' ', orden_tipo, ';');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;


















