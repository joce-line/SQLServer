--ecommerce
--DML

--INSERT


INSERT INTO Clientes
VALUES 
(1, 'baggins@email.com', '4567987', 'Vila dos Hobbits, 12 - Bolsão', 'Bilbo Baggins'),
(2, 'mithrandir@email.com', 'youshallnotpass2', 'Jardins de Lórien, s/n', 'Gandalf Mago'),
(3, 'legol@email.com', 'meuarco2000', 'Floresta das Trevas, 420', 'Legolas Verdefolha')

INSERT INTO Produtos
VALUES
('Cajado', 346.55, 1),
('Arco', 220.70, 2),
('Bolsinha', 150.00, 2),
('Flecha', 4.20, 100),
('Boné', 20, 1),
('Anel', 45, 12)

INSERT INTO Compras
VALUES 
(1, 3),
(1, 6),
(2, 1),
(2, 5),
(3, 2),
(3, 4)

SELECT * FROM Clientes
WHERE Nome LIKE '%Gandalf%'

SELECT * FROM Produtos
WHERE Preco BETWEEN 10 AND 50