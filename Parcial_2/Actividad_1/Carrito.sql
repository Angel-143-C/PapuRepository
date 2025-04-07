CREATE TABLE Carrito1 (
id int(18) NOT NULL,
Articulos varchar(15),
PRIMARY KEY (id,Articulos)
);


INSERT INTO Carrito1 Values 
(1, 'Azucar'),
(2, 'Pan'),
(3, 'Jugo'),
(4, 'Refresco'),
(5, 'Harina');

CREATE TABLE Carrito2 (
id int(18) NOT NULL,
Articulos varchar(15),
PRIMARY KEY (id,Articulos)
);


INSERT INTO Carrito2 Values 
(1, 'Azucar'),
(2, 'Pan'),
(6, 'Mantequilla'),
(7, 'Queso'),
(8, 'Manzana');  

Select * from Carrito1 left join Carrito2 on Carrito1.Articulos = Carrito2.Articulos
UNION 
Select * from Carrito1 right join Carrito2 on Carrito1.Articulos = Carrito2.Articulos;
