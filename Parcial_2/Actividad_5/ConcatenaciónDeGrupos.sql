CREATE TABLE Grupos (
    Secuencia int NOT NULL,
    Sintaxis varchar(12),
    PRIMARY KEY(Secuencia)
);

INSERT INTO Grupos VALUES
(1, 'SELECT'),
(2, 'Producto,'),
(3, 'Precio,'),
(4, 'Disponibilidad,'),
(5, 'FROM'),
(6, 'Productos'),
(7, 'WHERE'),
(8, 'Precio'),
(9, '>100');

SELECT GROUP_CONCAT(Sintaxis SEPARATOR ' ') AS Sintaxis
FROM Grupos
ORDER BY Secuencia;
