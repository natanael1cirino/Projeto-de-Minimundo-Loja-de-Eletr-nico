
CREATE DATABASE IF NOT EXISTS loja_eletronicos;
USE loja_eletronicos;

CREATE TABLE categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nome        VARCHAR(50) NOT NULL,
    descricao   VARCHAR(150),
    PRIMARY KEY (id_categoria)
);

CREATE TABLE produto (
    id_produto      INT NOT NULL AUTO_INCREMENT,
    nome            VARCHAR(100) NOT NULL,
    descricao       VARCHAR(150),
    preco           FLOAT NOT NULL,
    estoque         INT NOT NULL,
    garantia_meses  INT,
    id_categoria    INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE cliente (
    id_cliente  INT NOT NULL AUTO_INCREMENT,
    nome        VARCHAR(100) NOT NULL,
    email       VARCHAR(50) NOT NULL,
    senha       VARCHAR(255) NOT NULL,
    telefone    VARCHAR(15),
    endereco    VARCHAR(100),
    PRIMARY KEY (id_cliente)
);

CREATE TABLE pedido (
    id_pedido   INT NOT NULL AUTO_INCREMENT,
    data        DATE NOT NULL,
    status      VARCHAR(50),
    valor_total FLOAT,
    id_cliente  INT,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE item_pedido (
    id_item         INT NOT NULL AUTO_INCREMENT,
    id_pedido       INT,
    id_produto      INT,
    quantidade      INT,
    preco_unitario  FLOAT,
    PRIMARY KEY (id_item),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

-- ==========================
-- TABELA PAGAMENTO
-- ==========================
CREATE TABLE pagamento (
    id_pagamento    INT NOT NULL AUTO_INCREMENT,
    id_pedido       INT,
    forma_pagamento VARCHAR(30),
    valor_pago      FLOAT,
    data_pagamento  DATE,
    PRIMARY KEY (id_pagamento),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

CREATE TABLE fornecedor (
    id_fornecedor INT NOT NULL AUTO_INCREMENT,
    nome          VARCHAR(100) NOT NULL,
    cnpj          VARCHAR(18),
    telefone      VARCHAR(15),
    email         VARCHAR(50),
    PRIMARY KEY (id_fornecedor)
);

CREATE TABLE compra_estoque (
    id_compra     INT NOT NULL AUTO_INCREMENT,
    id_produto    INT,
    id_fornecedor INT,
    quantidade    INT,
    data_compra   DATE,
    valor_unitario FLOAT,
    PRIMARY KEY (id_compra),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);
