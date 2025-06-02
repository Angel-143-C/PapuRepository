CREATE TABLE Astronauta (
    Id INT NOT NULL,
    Trabajo VARCHAR(16) NOT NULL,
    Misiones INT NOT NULL,
    PRIMARY KEY(Id, Misiones)
);


Insert Into Astronauta Values
(1, 'Navegador', 6),
(2, 'Navegador', 12),
(3, 'Navegador', 17),
(4, 'Geólogo', 21),
(5, 'Geólogo', 9),
(6, 'Geólogo', 8),
(7, 'Técnico', 13),
(8, 'Técnico', 2),
(9, 'Técnico', 7);


SELECT Trabajo,
  (SELECT Id FROM Astronauta a2 WHERE a2.Trabajo = a1.Trabajo ORDER BY Misiones DESC LIMIT 1) AS `Experimentados`,
  (SELECT Id FROM Astronauta a2 WHERE a2.Trabajo = a1.Trabajo ORDER BY Misiones ASC LIMIT 1) AS `Menos Experimentados`
FROM 
  Astronauta a1
GROUP BY 
  Trabajo;