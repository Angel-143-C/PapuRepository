CREATE TABLE Licencias (
    Id_Empleado int(18) NOT NULL,
    Licencia Varchar(14) NOT NULL,
    PRIMARY KEY(Id_Empleado,Licencia)
);

INSERT INTO Licencias VALUES
(1001, 'Tipo A'),
(1001, 'Tipo B'),
(1001, 'Tipo C'),
(2002, 'Tipo A'),
(2002, 'Tipo B'),
(2002, 'Tipo C'),
(3003, 'Tipo A'),
(3003, 'Tipo D'),
(4004, 'Tipo A'),
(4004, 'Tipo B'),
(4004, 'Tipo D'),
(5005, 'Tipo A'),
(5005, 'Tipo B'),
(5005, 'Tipo D');

SELECT 
    l1.Id_Empleado AS Id_Empleado_1,
    l2.Id_Empleado AS Id_Empleado_2,
    COUNT(*) AS Coincidencias
FROM
    Licencias l1
JOIN
    Licencias l2
ON 
    l1.Licencia = l2.Licencia
AND 
    l1.Id_Empleado != l2.Id_Empleado
GROUP BY 
    l1.Id_Empleado, l2.Id_Empleado
HAVING 
    Coincidencias = 3;
