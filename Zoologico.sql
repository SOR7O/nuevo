/*Base de Datos Zoologico
Author:Angel Sorto
Clase:Programacion de negocios
fecha:18/06/2019
*/
--Seleccionar la base de datos por defecto
USE tempdb
GO
--Crear la base de datos Zoologico
IF NOT EXISTS(SELECT * FROM sys.databases WHERE [NAME]='Zoologico'
   BEGIN
CREATE DATABASE Zoologico
   END 
GO

--Seleccion 
USE Zoologico
GO

--CREAR EL SQUEMA A UTILIZAR
CREATE SCHEMA ZOO
Go

CREATE TABLE ZOO.zooligico(
id INT NOT NULL IDENTITY(1,1)
CONSTRAINT PK_Zoologico_id PRIMARY KEY,
ciudad NVARCHAR(50) NOT NULL
)
GO