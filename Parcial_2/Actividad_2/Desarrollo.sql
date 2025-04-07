CREATE TABLE Etapas_Desarrollo (
    Desarrollo varchar(18) NOT NULL,
    Etapa int(14) NOT NULL,
    Finalizado varchar(14) NULL,
    UNIQUE(Finalizado)
);

INSERT INTO Etapas_Desarrollo values
('RestAPI',1,'01/02/2024'),
('RestAPI',2,'30/05/2024'),
('RestAPI',3,'29/06/2024'),
('Web',1,'28/10/2024'),
('Web',2,'20/11/2024'),
('Web',3,NULL),
('App',1,'30/01/2025'),
('App',2,NULL);

SELECT
    Desarrollo
FROM 
    Etapas_Desarrollo
WHERE 
    Finalizado IS NULL;
