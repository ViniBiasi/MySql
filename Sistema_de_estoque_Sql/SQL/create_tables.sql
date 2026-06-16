CREATE DATABASE IF NOT EXISTS estoque_bd
DEFAULT CHARACTER SET utf8mb3
DEFAULT COLLATE utf8_general_ci;

USE Estoque_bd;

CREATE TABLE categorias(
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nome_categoria VARCHAR(15),
    PRIMARY KEY (id_categoria)
)DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS fornecedores(
    id_fornecedor INT NOT NULL AUTO_INCREMENT,
    nome_fornecedor VARCHAR(50) NOT NULL,
    telefone VARCHAR(15),
    PRIMARY KEY (id_fornecedor)
) DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS produtos(
    id_produto INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    descricao VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2),
    quantidade_estoque INT,
    id_categoria INT NOT NULL,
    id_fornecedor INT NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id_fornecedor)
) DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS movimentacoes(
    id_movimentacao INT NOT NULL AUTO_INCREMENT,
    data_movimentacao date,
    tipo_movimentacao enum('ENTRADA','SAIDA'),
    quantidade INT,
    id_produto INT NOT NULL,
    PRIMARY KEY (id_movimentacao),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
)DEFAULT CHARSET = utf8;