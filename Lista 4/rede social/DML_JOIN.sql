--Rede Social 


--FULL JOIN/ juntando dados de várias tabelas
SELECT *
FROM Usuarios
FULL JOIN Comunidades ON Usuarios.Id = Comunidades.FK_Usuario
FULL JOIN Post ON Comunidades.FK_Usuario = Post.Id

--LIKE/ procurando em comunidades, dentro da coluna de tema algo que contenha 'Piad'
SELECT * FROM Comunidades
WHERE Tema LIKE '%Piad%'

--COUNT/ saber quantidade de títulos com a palavra Ajuda, dentro de Post
SELECT COUNT(Titulo)  AS Ajuda
FROM Post
WHERE Titulo LIKE '%Ajuda%'

--quero saber a quantidade de comunidades colocadas
SELECT COUNT(*) AS TotalComunidades  
FROM Comunidades

