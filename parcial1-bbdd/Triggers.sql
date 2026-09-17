USE biblioteca_db;

DELIMITER $$

CREATE TRIGGER trg_validar_stock
BEFORE INSERT ON detalle_pedido
FOR EACH ROW
BEGIN
    DECLARE stock_disponible INT;
    SELECT stock INTO stock_disponible FROM productos WHERE isbn = NEW.isbn;
    IF stock_disponible < NEW.cantidad THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock insuficiente para el producto solicitado.';
    END IF;
END$$

CREATE TRIGGER trg_auditar_precio
AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
    IF NOT (NEW.precio <=> OLD.precio) THEN
        INSERT INTO auditoria_precios (isbn, precio_anterior, precio_nuevo, fecha_cambio, usuario_bd)
        VALUES (OLD.isbn, OLD.precio, NEW.precio, NOW(), USER());
    END IF;
END$$

DELIMITER ;
