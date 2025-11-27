
UPDATE cliente
SET email = 'ana.nova@gmail.com'
WHERE id_cliente = 1;

UPDATE produto
SET estoque = estoque + 5
WHERE id_produto = 1;

UPDATE pedido
SET status = 'ENVIADO'
WHERE id_pedido = 1;

DELETE FROM pagamento
WHERE forma_pagamento = 'BOLETO';


DELETE FROM item_pedido
WHERE id_pedido = 2 AND id_produto = 3;


DELETE FROM cliente
WHERE id_cliente = 3;
