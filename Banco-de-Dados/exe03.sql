CREATE DATABASE db_estudantes;
USE db_estudantes;
CREATE TABLE Estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    RA INT,
    serie INT,
    nota DECIMAL(10,2),
    PRIMARY KEY (id)
);
   INSERT INTO Estudantes (nome, RA, serie, nota)
VALUES
("Arthur", 9865, 8, 7.5),
("Luiza", 9864, 7, 9.5),
("Cris", 9862, 8, 2.5),
("Alex", 9837, 8, 9.5),
("junior", 9838, 8, 10),
("Matheus", 9889, 7, 5),
("Carlos", 9898, 8, 5.5),
("Fernanda", 9875, 8, 6.3);

SELECT * FROM Estudantes WHERE nota > 7.0;
SELECT * FROM Estudantes WHERE nota < 7.0;

UPDATE Estudantes SET nota = 7.0 WHERE id = 1;