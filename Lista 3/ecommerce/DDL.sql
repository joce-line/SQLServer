--eCommerce
--DDL

CREATE DATABASE db_ecommerce

USE db_ecommerce


CREATE TABLE Clientes(
	Id INT PRIMARY KEY NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(50) NOT NULL,
	Endereco VARCHAR(50) NOT NULL
)

CREATE TABLE Produtos(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Tipo VARCHAR(50) NOT NULL,
	Preco FLOAT NOT NULL,
	Quantidade INT NOT NULL
	
)

CREATE TABLE Compras(
	FK_Clientes INT NOT NULL,
	FK_Produtos INT NOT NULL,
	FOREIGN KEY (FK_Clientes) REFERENCES Clientes(Id),
	FOREIGN KEY (FK_Produtos) REFERENCES Produtos(Id),

)

ALTER TABLE dbo.Clientes 
ADD Nome VARCHAR(50) NOT NULL