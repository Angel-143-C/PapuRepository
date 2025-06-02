CREATE TABLE Estados (
    Paso int NOT NULL,
    Estado varchar(10) NOT NULL,
    PRIMARY KEY(Paso, Estado)
);

INSERT INTO Estados Values
(1,"Paso"),
(2,"Paso"),
(3,"Paso"),
(4,"Paso"),
(5,"Fallo"),
(6,"Fallo"),
(7,"Fallo"),
(8,"Fallo"),
(9,"Fallo"),
(10,"Paso"),
(11,"Paso"),
(12,"Paso");

SELECT 
  MIN(Paso) AS `Paso Min`, MAX(Paso) AS `Paso Max`, Estado, COUNT(*) AS Cuenta
FROM (
  SELECT Paso, Estado, Paso - ROW_NUMBER() OVER (PARTITION BY Estado ORDER BY Paso) AS grupo
  FROM Estados
) AS agrupado
GROUP BY Estado, grupo
ORDER BY `Paso Min`;
