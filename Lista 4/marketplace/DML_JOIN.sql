--MarketPlace



--INNER JOIN
SELECT Comprador.Nome, Comprador.Endereço ,Produtos.Nome, Vendedores.Nome AS Vendedor
FROM Comprador
INNER JOIN Pedido ON Comprador.Id = Pedido.FK_Comprador
INNER JOIN Produtos ON Pedido.FK_Produtos = Pedido.Id
INNER JOIN Vendedores ON Pedido.FK_Vendedor = Vendedores.Id

--LEFT JOIN
SELECT Vendedores.Nome, Produtos.Nome
FROM  Vendedores
LEFT JOIN Produtos ON Vendedores.Id = Produtos.FK_Vendedor

--IN

SELECT * FROM Produtos
WHERE Preco IN ('40', '50')

--AVG
SELECT
Comprador.Nome AS Nome,
AVG(Produtos.Preco) AS Preço
FROM Comprador
INNER JOIN Pedido ON Comprador.Id = Pedido.FK_Comprador
INNER JOIN Produtos ON Pedido.FK_Produtos = Produtos.Id
WHERE Comprador.Nome LIKE '%Lee%'
GROUP BY Comprador.Nome