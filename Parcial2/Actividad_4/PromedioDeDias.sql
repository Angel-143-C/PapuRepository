CREATE TABLE Promedio (
    Desarrollo varchar(18) NOT NULL,
    Terminacion DATE NOT NULL,
    PRIMARY KEY(Desarrollo, Terminacion)
);

INSERT INTO Promedio VALUES
('RestAPI','2024-06-01'),
('RestAPI','2024-06-14'),
('RestAPI','2024-06-15'),
('Web','2024-06-01'),
('Web','2024-06-02'),
('Web','2024-06-19'),
('App','2024-06-01'),
('App','2024-05-15'),
('App','2024-06-30');

SELECT 
    f1.Desarrollo,
    ROUND(AVG(DATEDIFF(f1.Terminacion, f2.Terminacion))) AS Promedio
FROM Promedio f1
JOIN Promedio f2 
    ON f1.Desarrollo = f2.Desarrollo AND f2.Terminacion = (
        SELECT MAX(f3.Terminacion)
        FROM Promedio f3
        WHERE f3.Desarrollo = f1.Desarrollo AND f3.Terminacion < f1.Terminacion
    )
GROUP BY f1.Desarrollo;
