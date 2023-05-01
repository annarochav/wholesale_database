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














































