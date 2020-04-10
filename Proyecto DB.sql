CREATE DATABASE Banco

CREATE TABLE cliente (id_cliente INTEGER (11)
PRIMARY KEY AUTO_INCREMENT NULL,
cedula VARCHAR(11)
nombre VARCHAR(50)
apellido VARCHAR(50)
sexo VARCHAR(1)
id_segmento VARCHAR(15)
id_ejecutivo VARCHAR(20)
edad INT(2));

CREATE TABLE ejecutivo (id_ejecutivo INTEGER(11)
PRIMARY KEY AUTO_INCREMENT NULL,
usuario VARCHAR(8),
nombre VARCHAR (40)
sexo VARCHAR (1)
fechacontratacion DATE
Sueldo INT (11));

CREATE TABLE segmento (id_segmento INTEGER (11)
PRIMARY KEY AUTO_INCREMENT NULL,
segmento VARCHAR (15),
manejomes VARCHAR (20),
tipobanca VARCHAR(15));

SELECT * FROM Clientes WHERE SegmentoCliente = 'plata'
SELECT*FROM segmentocliente
SELECT * FROM Ejecutivo
SELECT * FROM clientes WHERE SegmentoCliente = 'Diamond'
SELECT * FROM SegmentoCliente
SELECT * FROM Clientes WHERE SegmentoCliente = 'Cobre' AND Ejecutivo ='Ember Torres'
ALTER TABLE cliente CHANGE SegmentoCLiente IdSegmento VARCHAR (15);
ALTER TABLE segmento ENGINE=INNODB;

ALTER TABLE `Cliente`
ADD CONSTRAINT `FK_Segmento_Cliente`
FOREIGN KEY (`IdSegmento`)
REFERENCES `segmento`
(`IdSegmento`);

ALTER TABLE `Cliente`
ADD CONSTRAINT `FK_Ejecutivo_Cliente`
FOREIGN KEY (`IdEjecutivo`)
REFERENCES `ejecutivo`
(`IdEjecutivo`);


SELECT * FROM cliente WHERE idsegmento='cobre' AND idejecutivo='Ember Torres';











