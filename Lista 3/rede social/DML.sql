--rede social
--DML

INSERT INTO Usuarios
VALUES
(1, 'Phoebe Buffay', 'buffbe@email.com', '9873456'),
(2, 'Monica Geller', 'gmon@email.com', '123456'),
(3, ' Chander Bing', 'cbing@email.com', '876543')

INSERT INTO Comunidades
VALUES 
(1, 'M�sica', 'Todos que amam m�sica s�o bem vindos!', 1),
(2, 'Piadas', 'As piadas mais engra�adas do bairro', 3),
(3, 'Dan�a', 'S� quem gosta de dan�ar!', 2)

INSERT INTO Post
VALUES
('Piadinha em ingl�s', NULL, 'Every morning I get hit by the same bike...It�s a vicious cycle.', 3, 2),
('Ajuda', 'i.pinimg.com/564x/0e/c4/85/0ec485e3f8c3dc6bb143d746f3064748.jpg', 'Alguem sabe o nome da m�sica que tem TAN... TAN TAN TAN TANTANTAN TANTANTAN TANTAN TAN TAN TAN', 1 ,1),
('Novo passinho', NULL, 'Veja meu v�deo aprendendo um passo novo!', 2, 3)

SELECT * FROM Post
WHERE Descricao LIKE '%Ev%'

SELECT * FROM Comunidades
WHERE FK_Usuario LIKE '%2%'