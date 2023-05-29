-- 1. Transacción para eliminar productos de la tabla productos con un nombre en particular:
START TRANSACTION;
DELETE FROM productos WHERE producto = 'KIWI';
-- ROLLBACK; (descomentar si es necesario)
--COMMIT; (descomentar si es necesario)


-- 2. Transacción para eliminar proveedores y sus compras asociadas:
START TRANSACTION;
DELETE FROM compras WHERE id_proveedor = 1;
DELETE FROM proveedores WHERE id_proveedor = 1;
--ROLLBACK; (descomentar si es necesario)
--COMMIT; (descomentar si es necesario)

-- 3. Transacción para insertar nuevas marcas:
START TRANSACTION;
INSERT INTO marcas (id_marca, marca) VALUES (10, 'SUMMER FRIDAYS'); 
INSERT INTO marcas (id_marca, marca) VALUES (11, 'KARL LAGERFELD'); 
INSERT INTO marcas (id_marca, marca) VALUES (12, 'SWAROVSKI');
INSERT INTO marcas (id_marca, marca) VALUES (13, 'BAUBLE BAR'); 

SAVEPOINT savepoint_4;

INSERT INTO marcas (id_marca, marca) VALUES (14, 'MADEWELL'); 
INSERT INTO marcas (id_marca, marca) VALUES (15, 'PATRICK TA'); 
INSERT INTO marcas (id_marca, marca) VALUES (16, 'MERIT'); 
INSERT INTO marcas (id_marca, marca) VALUES (17, 'BENEFIT'); 

SAVEPOINT savepoint_8; 
-- ROLLBACK TO savepoint_4; (descomentar si es necesario)
-- COMMIT; (descomentar si es necesario)