CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(100),
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

    INSERT INTO tb_classes (nome_classe, descricao)
VALUES
("Guerreiro", "Especialista em combate corpo a corpo"),
("Mago", "Mestre em feitiços e poções"),
("Arqueiro", "Referência em mira e agilidade"),
("Curandeiro", "Ancião especializado em cura e inteligência"),
("Assassino", "Matador de sangue frio, com habilidades em armas");

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nivel INT,
    ataque INT,
    defesa INT,
    id_classe BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);


INSERT INTO tb_personagens (nome, nivel, ataque, defesa, id_classe)
VALUES
("Thorgan", 45, 2500, 1800, 1),
("Cassiel", 38, 1200, 900, 2),
("Mirelle", 42, 2200, 1100, 3),
("Aldric", 50, 900, 2500, 4),
("Nyx", 40, 2600, 700, 5),
("Braum", 30, 1800, 1500, 1),
("Selene", 35, 2100, 1000, 2),
("Kael", 47, 2400, 1300, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_personagens.ataque, tb_classes.nome_classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;


SELECT tb_personagens.nome, tb_personagens.ataque, tb_classes.nome_classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome_classe = "Arqueiro";