CREATE TABLE MisionMarte (
    Id_Candidato int(18) NOT NULL,
    Descripcion varchar(14) NOT NULL,
    PRIMARY KEY(Id_Candidato,Descripcion)
);

INSERT INTO MisionMarte values
(1001,'Geólogo'),
(1001,'Astrónomo'),
(1001, 'Bioquímico'),
(1001, 'Técnico'),
(2002, 'Cirujano'),
(2002, 'Mecánico'),
(2002, 'Geólogo'),
(3003, 'Geólogo'),
(3003, 'Astrónomo'),
(4004, 'Ingeniero');

SELECT
    Id_Candidato
FROM
    MisionMarte
WHERE
    Descripcion IN ('Geólogo', 'Astrónomo', 'Bioquímico')
GROUP BY
    Id_Candidato
HAVING
    COUNT(DISTINCT Descripcion) = 3;
