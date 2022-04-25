--MarketPlace


--quero saber o Nome de quem comprou, Endere�o,nome do produto equivalente e o nome da loja na qual pertence os produtos
--INNER JOIN
SELECT Comprador.Nome, Comprador.Endere�o, Produtos.Nome AS Produto, Vendedores.Nome AS Loja --aq seleciono o que eu quero que apare�a
FROM Comprador --tabela a esquerda
INNER JOIN Pedido ON Comprador.Id = Pedido.FK_Comprador 
INNER JOIN Produtos ON Pedido.FK_Produtos = Produtos.Id
INNER JOIN Vendedores ON Produtos.FK_Vendedor = Vendedores.Id


SELECT * FROM Produtos

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
AVG(Produtos.Preco) AS Pre�o
FROM Comprador
INNER JOIN Pedido ON Comprador.Id = Pedido.FK_Comprador
INNER JOIN Produtos ON Pedido.FK_Produtos = Produtos.Id
WHERE Comprador.Nome LIKE '%Lee%'
GROUP BY Comprador.Nome

--COUNT e AVG
SELECT COUNT(Quantidade) AS TotalProdutos, AVG(Preco) AS MediaPre�o  
FROM Produtos  
WHERE Preco > 20 AND Preco < 50