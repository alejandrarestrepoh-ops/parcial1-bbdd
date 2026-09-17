USE biblioteca_db;

DELIMITER $$

CREATE PROCEDURE pedidosPorCliente(IN cedula INT)
BEGIN
    SELECT 
        c.nombre AS cliente,
        p.id_pedido,
        p.fecha_pedido,
        pr.titulo AS libro,
        dp.cantidad,
        dp.fecha_devolucion
    FROM clientes c
    INNER JOIN pedidos p ON c.documento = p.documento
    INNER JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
    INNER JOIN productos pr ON dp.isbn = pr.isbn
    WHERE c.documento = cedula;
END$$

DELIMITER ;
