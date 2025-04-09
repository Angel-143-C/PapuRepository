CREATE TABLE Registros (
    Proceso varchar(15) NOT NULL,
    Mensaje varchar(50) NOT NULL,
    Ocurrencia int NOT NULL,
    PRIMARY KEY(Ocurrencia)
);

INSERT INTO Registros Values
('Web', 'Error: No se puede dividir por 0', 3), 
('RestAPI', 'Error: Fallo la conversión',  5),
('App', 'Error: Fallo la conversión',  7),
('RestAPI', 'Error: Error sin identificar', 9),
('Web', 'Error: Error sin identificar', 1),
('App', 'Error: Error sin identificar', 10),
('Web', 'Estado Completado', 8),
('RestAPI', 'Estado Completado', 6);

SELECT Proceso, Mensaje, MAX(Ocurrencia) AS Ocurrencia
FROM Registros
GROUP BY Mensaje
ORDER BY Proceso;