CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    idade INT,
    departamento VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO colaboradores (nome, cargo, salario, idade, departamento)
VALUES
("Ana Silva", "Analista", 3500.00, 28, "Financeiro"),
("Carlos Souza", "Assistente", 1800.00, 22, "RH"),
("Mariana Lima", "Gerente", 6200.00, 35, "Comercial"),
("João Pedro", "Estagiário", 1500.00, 20, "TI"),
("Fernanda Costa", "Desenvolvedora", 4800.00, 30, "TI");

SELECT * FROM colaboradores
WHERE salario > 2000;

SELECT * FROM colaboradores
WHERE salario < 2000;

UPDATE colaboradores
SET salario = 2000.00
WHERE id = 4;