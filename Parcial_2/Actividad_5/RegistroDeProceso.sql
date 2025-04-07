CREATE TABLE FlujoTrabajo (
    Flujo varchar(20) NOT NULL,
    Paso int NOT NULL,
    Estado varchar(15) NOT NULL,
    PRIMARY KEY(Flujo, paso)
);

INSERT INTO FlujoTrabajo VALUES
('Alpha', 1, 'Error'),
('Alpha', 2, 'Finalizado'),
('Alpha', 3, 'Corriendo'),
('Bravo', 1, 'Finalizado'),
('Bravo', 2, 'Finalizado'),
('Charlie', 1, 'Corriendo'),
('Charlie', 2, 'Corriendo'),
('Delta', 1, 'Error'),
('Delta', 2, 'Error'),
('Echo', 1, 'Corriendo'),
('Echo', 2, 'Finalizado');

SELECT Flujo,
    CASE 
        WHEN COUNT(DISTINCT Estado) = 1 THEN MAX(Estado)
        WHEN SUM(Estado = 'Error') > 0 THEN 'Indeterminado'
        ELSE 'Corriendo'
    END AS Estado
FROM FlujoTrabajo
GROUP BY Flujo;
