CREATE TABLE CasosDePrueba (
    Caso varchar(20) NOT NULL,
    PRIMARY KEY(Caso)
);

INSERT INTO CasosDePrueba Values
('A'),
('B'),
('C');

SELECT
    CONCAT(a.caso, ',', b.caso, ',', c.caso) AS Permutacion
FROM
    (SELECT 'A' AS caso UNION ALL SELECT 'B' UNION ALL SELECT 'C') a
JOIN
    (SELECT 'A' AS caso UNION ALL SELECT 'B' UNION ALL SELECT 'C') b ON a.caso <> b.caso
JOIN 
    (SELECT 'A' AS caso UNION ALL SELECT 'B' UNION ALL SELECT 'C') c ON a.caso <> c.caso AND b.caso <> c.caso;
