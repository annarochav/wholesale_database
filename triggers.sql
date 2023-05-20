---Tabla que contendra fechas y usuarios que hagan cambios----

CREATE TABLE AUDITORIAS (
id_log INT PRIMARY KEY auto_increment,
entity VARCHAR(100),
id_entity INT,
date_time  DATETIME,
created_by VARCHAR (100),
last_update_dt DATETIME,
last_updated_by VARCHAR (100)
);

---Trigger para saber el usuario y fecha cuando se crea un producto nuevo----

DELIMITER //
CREATE TRIGGER new_product_aud
AFTER INSERT ON productos
FOR EACH ROW
BEGIN
    INSERT INTO AUDITORIAS (entity, id_entity, date_time, created_by, last_update_dt, last_updated_by)
    VALUES ('producto', NEW.id_producto, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER());
END //
DELIMITER ;

---Trigger para saber el usuario y fecha de las actulizaciones de los productos----

DELIMITER //
CREATE TRIGGER update_product_aud
AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
    UPDATE AUDITORIAS SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER()
    WHERE id_entity = OLD.id_producto;
END //
DELIMITER ;

















