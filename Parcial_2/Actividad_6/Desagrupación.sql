CREATE TABLE Productos (
    Producto varchar(15) NOT NULL,
    Cantidad int NOT NULL,
    PRIMARY KEY(Producto, Cantidad)
);

INSERT INTO Productos values
('Lapiz',3),
('Borrador',4),
('Cuaderno',2);

SELECT 'Lápiz' AS Productos, 1 AS Cantidad FROM (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3) AS t
UNION ALL
SELECT 'Borrador', 1 FROM (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS t
UNION ALL
SELECT 'Cuaderno', 1 FROM (SELECT 1 UNION ALL SELECT 2) AS t;
