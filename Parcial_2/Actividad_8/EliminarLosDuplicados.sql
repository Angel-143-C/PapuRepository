CREATE TABLE muestra (
    valor INTEGER
);  

INSERT INTO muestra VALUES
 (1),(1),(2),(3),(3),(4);

Select 
    DISTINCT(valor)
From muestra;
