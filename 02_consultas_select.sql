
SELECT id_cliente, nome, email
FROM cliente
ORDER BY nome;


SELECT p.id_pedido, c.nome AS cliente, p.data, p.status, p.valor_total
FROM pedido p
JOIN cliente c ON c.id_cliente = p.id_cliente
ORDER BY p.data DESC;


SELECT nome, preco
FROM produto
ORDER BY preco DESC
LIMIT 3;


SELECT p.id_pedido, c.nome,
       SUM(i.quantidade * i.preco_unitario) AS total_itens
FROM pedido p
JOIN cliente c ON c.id_cliente = p.id_cliente
JOIN item_pedido i ON i.id_pedido = p.id_pedido
GROUP BY p.id_pedido, c.nome;


SELECT p.nome AS produto, c.nome AS categoria
FROM produto p
JOIN categoria c ON c.id_categoria = p.id_categoria;

