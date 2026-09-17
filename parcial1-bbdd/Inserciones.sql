USE biblioteca_db;

INSERT INTO departamentos (nombre) VALUES
('Valle'), ('Cundinamarca'), ('Antioquia');

INSERT INTO ciudades (nombre, id_departamento) VALUES
('Cali', 1), ('Bogota', 2), ('Medellin', 3);

INSERT INTO clientes (documento, nombre, id_ciudad) VALUES
(111, 'Pedro Gil', 1),
(222, 'Laura Ruiz', 2),
(333, 'Carlos Perez', 3);

INSERT INTO autores (nombre) VALUES
('G. Garcia'), ('A. Saint'), ('J. R. R. Tolkien');

INSERT INTO editoriales (nombre) VALUES
('Planeta'), ('Panamericana'), ('Minotauro');

INSERT INTO productos (isbn, titulo, id_autor, id_editorial, precio, stock) VALUES
('978-1', 'Cien Anos', 1, 1, 50000, 10),
('978-2', 'El Principito', 2, 2, 35000, 5),
('978-3', 'El Hobbit', 3, 3, 75000, 8);

INSERT INTO pedidos (documento, fecha_pedido) VALUES
(111, '2024-01-10'),
(222, '2024-02-05'),
(333, '2024-03-15');

INSERT INTO detalle_pedido (id_pedido, isbn, cantidad, fecha_devolucion) VALUES
(1, '978-1', 1, '2024-01-20'),
(2, '978-2', 1, '2024-02-15'),
(3, '978-3', 1, '2024-03-25');

