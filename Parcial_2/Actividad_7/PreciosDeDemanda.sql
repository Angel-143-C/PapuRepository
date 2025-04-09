CREATE TABLE Productos2 (
    Id_Producto int NOT NULL,
    Fecha varchar(15) NOT NULL,
    Precio float NOT NULL,
    Primary key(Id_Producto,Fecha)
);

INSERT INTO Productos2 Values
(1001, '01-01-2025', 19.99),
(1001, '04-15-2025', 59.99),
(1001, '06-08-2025', 79.99),
(2002, '04-17-2025', 39.99),
(2002, '05-19-2025', 59.99);

SELECT Id_Producto, Fecha, Precio
FROM Productos2
WHERE (Id_Producto, Fecha) IN (
    SELECT Id_Producto, MAX(Fecha)
    FROM Productos2
    GROUP BY Id_Producto
);