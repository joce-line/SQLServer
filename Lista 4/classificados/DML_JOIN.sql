--Classificados


--RIGHT JOIN 
SELECT Usuarios.Nome, Anuncios.Contato 
FROM Anuncios 
RIGHT JOIN Usuarios  ON Anuncios.FK_Usuario = Usuarios.Id

--LIKE
SELECT * FROM Anuncios
WHERE Categorias LIKE '%Venda%'

--COUNT
SELECT COUNT(Categorias)  
FROM Anuncios
WHERE Categorias LIKE '%Com%'
