CREATE TABLE Periodos (
    Inicio DATE NOT NULL,
    Final DATE NOT NULL
);

INSERT INTO Periodos values
('2025-01-01', '2025-01-05'),
('2025-01-03', '2025-01-09'),
('2025-01-10', '2025-01-11'),
('2025-01-12', '2025-01-16'),
('2025-01-15', '2025-01-19');


SELECT MIN(Inicio) AS Inicio, MAX(Final) AS Final
FROM Periodos
GROUP BY (SELECT COUNT(*) FROM Periodos p2 WHERE p2.Final < Periodos.Inicio)
ORDER BY Inicio;