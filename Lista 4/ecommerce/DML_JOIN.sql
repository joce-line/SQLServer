--E COMMERCE 


--INNER JOIN

SELECT Clientes.Nome AS Nome,
Clientes.Endereco AS Endereço,
Produtos.Tipo AS Produto
FROM Clientes 
INNER JOIN Compras ON Clientes.Id = Compras.FK_Clientes
INNER JOIN Produtos ON Compras.FK_Produtos = Produtos.Id

--BETWEEN
SELECT * FROM Produtos
WHERE Preco BETWEEN 10 AND 50

--SUM
--quero saber quanto Gandalf pagou nas comprinhas
SELECT 
Clientes.Nome AS Nome,
SUM(Produtos.Preco) AS Preço
FROM Clientes
INNER JOIN Compras ON Clientes.Id = Compras.FK_Clientes
INNER JOIN Produtos ON Compras.FK_Produtos = Produtos.Id
WHERE Clientes.Nome LIKE '%Gandalf%'
GROUP BY Clientes.Nome

