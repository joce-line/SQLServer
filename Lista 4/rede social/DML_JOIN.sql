--Rede Social 

--FULL JOIN

SELECT *
FROM Usuarios
FULL JOIN Comunidades ON Usuarios.Id = Comunidades.FK_Usuario
FULL JOIN Post ON Post.FK_Comunidade = Comunidades.Id;

--LIKE
SELECT * FROM Comunidades
WHERE Tema LIKE '%Piad%'

--COUNT
SELECT COUNT(Titulo)  
FROM Post
WHERE Titulo LIKE '%Ajuda%'