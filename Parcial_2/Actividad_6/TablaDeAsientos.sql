CREATE TABLE Asientos( 
num_asiento INTEGER 
);

INSERT INTO Asientos VALUES 
(7),(13),(14),(15),(27),(28),(29),(30), (31),(32),(33),(34),(35),(52),(53),(54);


SELECT 
    (MAX(num_asiento) - MIN(num_asiento) + 1) - COUNT(*) AS disponibles
FROM Asientos;


SELECT 
    COUNT(CASE WHEN num_asiento % 2 = 0 THEN 1 END) AS pares,
    COUNT(CASE WHEN num_asiento % 2 != 0 THEN 1 END) AS impares
FROM Asientos;


SET @prev := 0;

SELECT espacio_inicio, espacio_final
FROM (
     SELECT 
        @prev + 1 AS espacio_inicio,
        num_asiento - 1 AS espacio_final,
       @prev := num_asiento
    FROM Asientos
    ORDER BY num_asiento
) subquery
WHERE espacio_inicio <= espacio_final;