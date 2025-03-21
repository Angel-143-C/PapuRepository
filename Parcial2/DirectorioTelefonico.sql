CREATE TABLE DirectorioTelefonico (
    CustomerID INT(18) NOT NULL,
    TypePhone varchar(15) NOT NULL,
    Number varchar(15) NOT NULL,
    PRIMARY KEY(Number)
);

INSERT INTO DirectorioTelefonico values
(1001,'Celular','333-897-5421'),
(1001,'Trabajo','333-897-6542'),
(1001,'Casa','333-698-9874'),
(2002,'Celular','333-963-6544'),
(2002,'Trabajo','333-812-9856'),
(3003,'Celular','333-987-6541');

SELECT d.CustomerID d.TypePhone d.Number
FROM DirectorioTelefonico d
WHERE d.CustomerID = 1001 
