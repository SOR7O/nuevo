/*
	Objetivo: Crear la base de datos Zoologico
	para utilizarla en el aprendizaje de la conectividad
	con C# WPF.
	Autor: Angel Sorto
	Fecha: 18/Junio/2019
*/

-- Seleccionar la base de datos por defecto
USE tempdb
GO



-- Crear la base de datos
IF NOT EXISTS(SELECT * FROM sys.databases WHERE [name] = 'Zoologico')
	BEGIN
		CREATE DATABASE Zoologico
	END
GO

-- Seleccionar la base de datos recién creada (o existente)
USE Zoologico
GO

-- Crear el esquema a utilizar
CREATE SCHEMA ZOO
GO

-- Crear la tabla Zoologico
CREATE TABLE ZOO.Zoologico (
	id INT NOT NULL IDENTITY
		CONSTRAINT PK_Zoologico_id PRIMARY KEY CLUSTERED,
	ciudad NVARCHAR(50) NOT NULL
)
GO

--CREAMOS LA TABLA ANIMAL
CREATE TABLE ZOO.Animal(
id INT IDENTITY NOT NULL
CONSTRAINT PK_Animal_id PRIMARY KEY CLUSTERED,
nombre NVARCHAR(50) NOT NULL
)
GO

--CREAMOS LA TABLA DE RELACION ANIMAL ENTRE ZOOLOGICO
CREATE TABLE ZOO.AnimalZoologico(
idZoologico INT NOT NULL,
idAnimal INT NOT NULL
)
GO

--RELACIONES AnimalZoologico con zoologico
ALTER TABLE ZOO.AnimalZoologico
ADD CONSTRAINT 
FK_ZOO_AnimalZoologico$Pertenece$ZOO_Zoologico
FOREIGN KEY(idZoologico) REFERENCES ZOO.Zoologico(id)
ON UPDATE CASCADE
ON DELETE NO ACTION
GO

--RELACION	AnimalZoologico con Animal
ALTER TABLE ZOO.AnimalZoologico
ADD CONSTRAINT 
FK_ZOO_AnimalZoologico$EsUn$ZOO_Animal
FOREIGN KEY(idAnimal) REFERENCES ZOO.Animal(id)
ON UPDATE CASCADE
ON DELETE NO ACTION
GO


Select * from ZOO.Zoologi

delete from ZOO.zooligico where id=3
GO