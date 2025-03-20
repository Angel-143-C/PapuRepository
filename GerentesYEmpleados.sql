CREATE TABLE Empleados (
    id_Empleado int(18) NOT NULL,
    id_Gerente int(18) NOT NULL,
    Puesto varchar(15) NOT NULL,
    PRIMARY KEY(id_Gerente,Puesto)
);

INSERT INTO Empleados Values
(1001,'','Presidente'),
(2002,1001,'Director'),
(3003,1001,'Gerente'),
(4004,2002,'Ingeniero'),
(5005,2002,'Contador'),
(6006,2002,'Administrador');