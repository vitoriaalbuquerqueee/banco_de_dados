CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(100),
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
("Tradicional", "Sabores clássicos e populares"),
("Especial", "Sabores gourmet com ingredientes selecionados"),
("Doce", "Pizzas doces para sobremesa"),
("Vegetariana", "Sem ingredientes de origem animal"),
("Vegana", "100% livre de produtos de origem animal");

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tamanho VARCHAR(50),
    ingredientes VARCHAR(255),
    valor DECIMAL(10,2),
    id_categoria BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, tamanho, ingredientes, valor, id_categoria)
VALUES
("Marguerita", "Média", "Molho, mussarela, tomate, manjericão", 42.00, 1),
("Calabresa", "Média", "Molho, mussarela, calabresa, cebola", 45.00, 1),
("Quatro Queijos", "Grande", "Mussarela, provolone, parmesão, gorgonzola", 58.00, 2),
("Camarão", "Grande", "Molho branco, camarão, catupiry", 89.00, 2),
("Chocolate com Morango", "Média", "Chocolate ao leite, morango", 48.00, 3),
("Banana com Canela", "Média", "Banana, canela, leite condensado", 44.00, 3),
("Brócolis com Ricota", "Média", "Brócolis, ricota, tomate seco", 46.00, 4),
("Portuguesa Vegana", "Grande", "Molho, queijo vegano, palmito, ervilha", 62.00, 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome, tb_pizzas.valor, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT tb_pizzas.nome, tb_pizzas.valor, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Doce";