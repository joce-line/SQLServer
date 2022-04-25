--MARKETPLACE
--DDL

CREATE DATABASE db_marketplac

USE db_marketplac

CREATE TABLE Comprador(
	Id INT PRIMARY KEY NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(50) NOT NULL,
	CPF VARCHAR(50) NOT NULL,
	Endereço VARCHAR(50) NOT NULL
)

CREATE TABLE Vendedores(
	Id INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Categoria VARCHAR(50) NOT NULL
)

CREATE TABLE Produtos(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Imagem VARCHAR(50) NOT NULL,
	Preco FLOAT NOT NULL,
	Tamanho VARCHAR(50) NOT NULL,
	Quantidade INT NOT NULL,
	FK_Vendedor INT NOT NULL,
	FOREIGN KEY (FK_Vendedor) REFERENCES Vendedores(Id)
)

CREATE TABLE Pedido(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	FK_Comprador INT NOT NULL,
	FK_Vendedor INT NOT NULL,
	FK_Produtos INT NOT NULL,
	FOREIGN KEY (FK_Comprador) REFERENCES Comprador(Id),
	FOREIGN KEY (FK_Vendedor) REFERENCES Vendedores(Id),
	FOREIGN KEY (FK_Produtos) REFERENCES Produtos(Id)

)

ALTER TABLE Comprador 
ADD Nome VARCHAR(50) NULL

UPDATE Comprador
SET Nome = 'Nomezinho legal'

ALTER TABLE Comprador ALTER COLUMN Nome VARCHAR(50) NOT NULL

UPDATE Comprador
SET Nome = 'Robson Luiz'
WHERE Id = 1
UPDATE Comprador
SET Nome = 'Robinho Andy'
WHERE Id = 2
UPDATE Comprador
SET Nome = 'Geralda Bon'
WHERE Id = 3
UPDATE Comprador
SET Nome = 'Larinha Jovi'
WHERE Id = 4
UPDATE Comprador
SET Nome = 'Sebastião Lee'
WHERE Id = 5
UPDATE Comprador
SET Nome = 'Faustão Correia'
WHERE Id = 6
UPDATE Comprador
SET Nome = 'Monique Vieira'
WHERE Id = 7