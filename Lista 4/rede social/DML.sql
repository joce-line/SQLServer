--rede social
--DML

INSERT INTO Usuarios
VALUES
(1, 'Phoebe Buffay', 'buffbe@email.com', '9873456'),
(2, 'Monica Geller', 'gmon@email.com', '123456'),
(3, ' Chander Bing', 'cbing@email.com', '876543')

INSERT INTO Comunidades
VALUES 
(1, 'Música', 'Todos que amam música são bem vindos!', 1),
(2, 'Piadas', 'As piadas mais engraçadas do bairro', 3),
(3, 'Dança', 'Só quem gosta de dançar!', 2)

INSERT INTO Post
VALUES
('Piadinha em inglês', NULL, 'Every morning I get hit by the same bike...It’s a vicious cycle.', 3, 2),
('Ajuda', 'i.pinimg.com/564x/0e/c4/85/0ec485e3f8c3dc6bb143d746f3064748.jpg', 'Alguem sabe o nome da música que tem TAN... TAN TAN TAN TANTANTAN TANTANTAN TANTAN TAN TAN TAN', 1 ,1),
('Novo passinho', NULL, 'Veja meu vídeo aprendendo um passo novo!', 2, 3)

SELECT * FROM Post
WHERE Descricao LIKE '%Ev%'

SELECT * FROM Comunidades
WHERE FK_Usuario LIKE '%2%'