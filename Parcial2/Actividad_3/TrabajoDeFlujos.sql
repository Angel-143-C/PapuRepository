REATE TABLE Trabajo (
Flujo varchar(18) NOT NULL,
Caso_1 int(14) NOT NULL,
Caso_2 int(14) NOT NULL,
Caso_3 int(14) NOT NULL,
PRIMARY KEY(Flujo)
);


INSERT INTO Trabajo VALUES
('Alta_De_Usuario',0,0,0),
('Baja_De_Usuario',0,1,1),
('Nueva_Orden',1,0,0),
('Elimina_Orden',0,0,0);

SELECT
    Flujo,
    (Caso_1 + Caso_2 + Caso_3) AS Aprovado
FROM
    Trabajo;
