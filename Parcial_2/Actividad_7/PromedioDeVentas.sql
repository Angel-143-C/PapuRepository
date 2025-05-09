CREATE TABLE Ventas (
    Id_Orden int NOT NULL,
    Id_Cliente int NOT NULL,
    Fecha varchar(15) NOT NULL,
    Total int NOT NULL,
    Estado Varchar(15),
    PRIMARY KEY(Id_Orden)
);

INSERT INTO Ventas Values
(1, 1001, '01/01/2025', 100, 'JAL'),
(2, 1001, '01/01/2025', 150, 'JAL'),
(3, 1001, '01/01/2025', 75, 'JAL'),
(4, 1001, '02/01/2025', 100, 'JAL'),
(5, 1001, '03/01/2025', 100, 'JAL'),
(6, 2002, '02/01/2025', 75, 'JAL'),
(7, 2002, '02/01/2025', 150, 'JAL'),
(8, 3003, '01/01/2025', 100, 'CDMX'),
(9, 3003, '02/01/2025', 100, 'CDMX'),
(10, 3003, '03/01/2025', 100, 'CDMX'),
(11, 4004, '04/01/2025', 100, 'CDMX'),
(12, 4004, '05/01/2025', 50, 'CDMX'),
(13, 4004, '05/01/2025', 100, 'CDMX');

SELECT DISTINCT Estado
FROM Ventas
GROUP BY Estado
HAVING AVG(Total) > 100;