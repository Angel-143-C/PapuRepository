CREATE TABLE Numeros (
    id int NOT NULL,
    Entero int NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Numeros VALUES
(1,5),
(2,6),
(3,10),
(4,10),
(5,13),
(6,14),
(7,17),
(8,20),
(9,81),
(10,90),
(11,76);

WITH NumerosOrdenados AS (
    SELECT Entero, ROW_NUMBER() OVER (ORDER BY Entero) AS Posicion,
           COUNT(*) OVER () AS Total
    FROM Numeros
),
Mediana AS (
    SELECT AVG(Entero) AS Mediana
    FROM NumerosOrdenados
    WHERE Posicion IN (FLOOR((Total + 1) / 2), CEIL((Total + 1) / 2))
),
Moda AS (
    SELECT Entero AS Moda
    FROM Numeros
    GROUP BY Entero
    ORDER BY COUNT(*) DESC, Entero
    LIMIT 1
)
SELECT 
    AVG(Entero) AS Media,
    (SELECT Mediana FROM Mediana) AS Mediana,
    (SELECT Moda FROM Moda) AS Moda,
    MAX(Entero) - MIN(Entero) AS Rango
FROM Numeros;

WITH NumerosOrdenados AS (
    SELECT Entero, ROW_NUMBER() OVER (ORDER BY Entero) AS Posicion,
           COUNT(*) OVER () AS Total
    FROM Numeros
),
Mediana AS (
    SELECT AVG(Entero) AS Mediana
    FROM NumerosOrdenados
    WHERE Posicion IN (FLOOR((Total + 1) / 2), CEIL((Total + 1) / 2))
),
Moda AS (
    SELECT Entero AS Moda
    FROM Numeros
    GROUP BY Entero
    ORDER BY COUNT(*) DESC, Entero
    LIMIT 1
)
SELECT 
    AVG(Entero) AS Media,
    (SELECT Mediana FROM Mediana) AS Mediana,
    (SELECT Moda FROM Moda) AS Moda,
    MAX(Entero) - MIN(Entero) AS Rango
FROM Numeros;

