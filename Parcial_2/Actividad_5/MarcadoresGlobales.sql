CREATE TABLE Partidas (
    JugadorA int NOT NULL,
    JugadorB int NOT NULL,
    Marcador int NOT NULL,
    PRIMARY KEY (JugadorA, JugadorB)
);

INSERT INTO Partidas VALUES
(1001,2002,150),
(3003,4004,15),
(4004,3003,125);

SELECT 
    LEAST(JugadorA, JugadorB) AS JugadorA, 
    GREATEST(JugadorA, JugadorB) AS JugadorB, 
    SUM(Marcador) AS Marcador
FROM Partidas
GROUP BY LEAST(JugadorA, JugadorB), GREATEST(JugadorA, JugadorB);
