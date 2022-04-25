--MARKETPLACE
--DML

INSERT INTO Comprador
VALUES
(1, 'email@email.com', '123456', '76519244976', 'Rua das Laranjas, 54 - SP'),
(2, 'emai2l@email.com', '2345664', '54388769312', 'Rua dos Limões, 124 - GO'),
(3, 'email3@email.com', 'k75yt', '92315434592', 'Rua dos Maracujás, 884 - RJ'),
(4, 'email4@email.com', 'u7y5r6t5rg', '12354376512', 'Rua das Ameixas, 544 - SP'),
(5, 'email5@email.com', 'er45678', '98776553123', 'Rua dos Abacaxis, 666 - SP'),
(6, 'email7@email.com', 'u6y5t4r', '33736539866', 'Rua das Uvas, 420 - RJ'),
(7, 'email9@email.com', 'l9o8i763', '11144477798', 'Rua das Melâncias, 333 - AC')

INSERT INTO Vendedores
VALUES
(1, 'Loja de Amarelo', 'tintas'),
(2, 'Loja de Azul', 'roupas'),
(3, 'Loja de Verde', 'livros')

INSERT INTO Produtos
VALUES
('tinta azul metálico', 'img', 33.50, '1 litro', 1, 1),
('tinta verde natureza', 'img', 37.50, '1 litro', 1, 1),
('tinta laranja pôr do sol', 'img', 40.00, '2 litro', 1, 1),
('camiseta do bob esponja', 'img', 50.00, 'PP', 2, 2),
('camiseta da grifinória', 'img', 50.00, 'M', 1, 2),
('Calça jeans da moda', 'img', 80.79, '38', 1, 2),
('Vestido Preto Noturno', 'img', 130.59, '38', 1, 2),
('Livro Com Sangue', 'img', 47.90, '397 paginas', 1, 3),
('Livro O Hobbit', 'img', 30.50, '297 paginas', 1, 3)


INSERT INTO Pedido
VALUES
(1, 3, 9),
(2, 2, 4),
(2, 2, 7),
(3, 1, 3),
(4, 3, 8),
(5, 1, 1),
(5, 2, 5),
(6, 3, 8),
(7, 1, 2),
(7, 2, 6)

SELECT * FROM Pedido
WHERE FK_Vendedor LIKE '%2%'

SELECT * FROM Produtos
WHERE Nome LIKE '%tinta%'
