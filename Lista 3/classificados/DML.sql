--classificados 
--DML


INSERT INTO Usuarios
VALUES
(1, 'Jace Wall', 'jwall@email.com', 'sdfr456'),
(2, 'Clare Cass', 'class@email.com', 'uy35et'),
(3, 'Stephen King', 'kingzinho@email.com', 'flo47')

INSERT INTO Anuncios
VALUES
(1, 'Venda', 'Vendo móveis!', 'telefone 7777-8888', 1),
(2, 'Compra', 'Compro ouro', 'email: class@email.com', 2),
(3, 'Venda', 'Vendo livrinhos bons', 'telefone 93456-7652', 3)

SELECT * FROM Usuarios
WHERE Email LIKE '%king%'

SELECT * FROM Anuncios



