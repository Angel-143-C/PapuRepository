CREATE TABLE Ordenes (
    Id_cliente int(18) NOT NULL,
    Id_Orden int(18) NOT NULL,
    Estado_Destino varchar(15) NOT NULL,
    Costo varchar(15) NOT NULL,
    PRIMARY KEY(Id_Orden)
);

INSERT INTO Ordenes VALUES
(1001, 1, 'JAL', '$987.00'),
(1001, 2, 'CDMX', '$400.00'),
(1001, 3, 'CDMX', '$545.00'),
(1001, 4, 'CDMX', '$321.00'),
(2002, 5, 'MTY', '$324.00'),
(3003, 6, 'JAL', '$931.00'),
(4004, 7, 'JAL', '$876.00'),
(5005, 8, 'CDMX', '$567.00');

SELECT o.Id_cliente, o.Id_Orden, o.Estado_Destino, o.Costo
FROM Ordenes o
WHERE o.Estado_Destino = 'CDMX'
  AND o.Id_cliente IN (
      SELECT Id_cliente
      FROM Ordenes
      WHERE Estado_Destino = 'JAL'
  )
ORDER BY o.Id_cliente, o.Id_Orden;
