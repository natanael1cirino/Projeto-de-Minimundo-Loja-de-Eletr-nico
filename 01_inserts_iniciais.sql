
INSERT INTO categoria (nome, descricao) VALUES
('Eletrônicos', 'Produtos eletrônicos diversos'),
('Informática', 'Produtos de informática'),
('Casa', 'Produtos domésticos');


INSERT INTO fornecedor (nome, cnpj, telefone, email) VALUES
('Tech Distribuidora LTDA', '12.345.678/0001-99', '(11)4000-1000', 'contato@tech.com'),
('Mundo Digital SA', '98.765.432/0001-55', '(11)3555-9090', 'digital@mundo.com');


INSERT INTO produto (nome, descricao, preco, estoque, garantia_meses, id_categoria) VALUES
('Notebook Gamer', 'Notebook com GPU dedicada', 5000.00, 10, 24, 2),
('Mouse Óptico', 'Mouse USB 1600dpi', 150.00, 50, 12, 2),
('TV 50"', 'Smart TV 4K', 3200.00, 8, 36, 1),
('Liquidificador', 'Liquidificador 900W', 230.00, 20, 12, 3);


INSERT INTO cliente (nome, email, senha, telefone, endereco) VALUES
('Ana Souza', 'ana.souza@gmail.com', 'senha123', '(11)98888-1111', 'Rua A, 100'),
('Bruno Lima', 'bruno.lima@gmail.com', 'abc123', '(11)97777-2222', 'Rua B, 200'),
('Carla Mendes', 'carla.mendes@gmail.com', '123abc', '(11)96666-3333', 'Rua C, 300');


INSERT INTO pedido (data, status, valor_total, id_cliente) VALUES
('2025-11-20', 'ABERTO', 5150.00, 1),
('2025-11-21', 'FECHADO', 3200.00, 2);


INSERT INTO item_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 5000.00),
(1, 2, 1, 150.00),
(2, 3, 1, 3200.00);


INSERT INTO pagamento (id_pedido, forma_pagamento, valor_pago, data_pagamento) VALUES
(1, 'CARTAO', 3000.00, '2025-11-20'),
(1, 'PIX', 2150.00, '2025-11-20'),
(2, 'BOLETO', 3200.00, '2025-11-21');


INSERT INTO compra_estoque (id_produto, id_fornecedor, quantidade, data_compra, valor_unitario) VALUES
(1, 1, 5, '2025-11-18', 4000.00),
(2, 1, 30, '2025-11-19', 100.00),
(3, 2, 3, '2025-11-19', 2500.00);
