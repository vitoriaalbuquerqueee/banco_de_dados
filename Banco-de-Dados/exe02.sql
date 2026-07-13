DROP DATABASE IF EXISTS db_ecommerce;
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(100),
    quantidadeEstoque INT,
    categoria VARCHAR(100),
    preco DECIMAL(10,2),
    PRIMARY KEY (id)
);

INSERT INTO produtos (nome, marca, quantidadeEstoque, categoria, preco)
VALUES
("Televisão", "TecG", 5, "Eletrônicos", 2000.00),
("Celular", "Samsung", 10, "Eletrônicos", 1500.00),
("Secador de Cabelo", "Philips", 8, "Beleza", 250.00),
("Bicicleta", "Caloi", 3, "Esporte", 1200.00),
("Skate", "Drop Dead", 7, "Esporte", 450.00);

SELECT * FROM produtos WHERE preco > 500;
SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 2100.00 WHERE id = 1;