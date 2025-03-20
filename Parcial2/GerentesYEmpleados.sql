CREATE TABLE Empleados (
    id_Empleado int(18) NOT NULL,
    id_Gerente int(18) NULL,
    Puesto varchar(15) NOT NULL,
    PRIMARY KEY(id_Empleado,Puesto)
);

INSERT INTO Empleados Values
(1001,NULL,'Presidente'),
(2002,1001,'Director'),
(3003,1001,'Gerente'),
(4004,2002,'Ingeniero'),
(5005,2002,'Contador'),
(6006,2002,'Administrador');

SELECT e.Id_empleado, e.Id_gerente, e.Puesto,
       CASE 
           WHEN e.Id_gerente IS NULL THEN 0
           WHEN e.Id_gerente = 1001 THEN 1
           ELSE 2
       END AS Nivel
FROM Empleados e
ORDER BY Nivel, Id_gerente;
