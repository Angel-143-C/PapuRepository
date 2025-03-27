CREATE TABLE Inventario (
    Fecha varchar(18) NOT NULL,
    Ajuste int(14),
    PRIMARY KEY(Fecha,Ajuste)
);

INSERT INTO Inventario Values
('03/01/2025',100),
('04/01/2025',75),
('05/01/2025',-150),
('06/01/2025',50),
('07/01/2025',-70);

SET 
    @Inventario = 0;

SELECT 
    Fecha,
    Ajuste,
    @Inventario := @Inventario + Ajuste AS Inventario
FROM 
    Inventario
ORDER BY 
    Fecha;