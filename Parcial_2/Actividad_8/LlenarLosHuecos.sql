CREATE TABLE Datos (
    Fila INT PRIMARY KEY,
    Aplicacion VARCHAR(50),
    Estado VARCHAR(50)
);

INSERT INTO Datos VALUES
(1, 'Web', 'Aprobado'),
(2, NULL, 'Fallo'),
(3, NULL, 'Fallo'),
(4, NULL, 'Fallo'),
(5, 'App', 'Aprobado'),
(6, NULL, 'Fallo'),
(7, NULL, 'Fallo'),
(8, NULL, 'Aprobado'),
(9, NULL, 'Aprobado'),
(10, 'RESTAPI', 'Fallo'),
(11, NULL, 'Fallo'),
(12, NULL, 'Fallo');

SELECT t1.Fila, 
       COALESCE(t1.Aplicacion, (SELECT t2.Aplicacion FROM Datos t2 WHERE t2.Fila < t1.Fila AND t2.Aplicacion IS NOT NULL ORDER BY t2.Fila DESC LIMIT 1)) AS Aplicacion, 
       t1.Estado
FROM Datos t1;
