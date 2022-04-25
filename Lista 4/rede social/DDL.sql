--Rede social
--DDL

CREATE DATABASE db_redesocial

USE db_redesocial

CREATE TABLE Usuarios(
	Id INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL
)

CREATE TABLE Comunidades(
	Id INT PRIMARY KEY NOT NULL,
	Tema VARCHAR(50) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	FK_Usuario INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES Usuarios(Id) 
)

CREATE TABLE Post(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50) NOT NULL,
	Imagem VARCHAR(200) NULL,
	Descricao VARCHAR(100) NOT NULL,
	FK_Usuario INT NOT NULL,
	FK_Comunidade INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES Usuarios(Id),
	FOREIGN KEY (FK_Comunidade) REFERENCES Comunidades(Id)
)

--Alterando a length do var para caber a url da imagem, e se quiser o not null, precisaria especificar neste caso quero o null, ent ñ é necessario
ALTER TABLE Post ALTER COLUMN Imagem VARCHAR (255) 

