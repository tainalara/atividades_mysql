CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Tabela independente
CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
habilidade VARCHAR(255) NOT NULL,
origem VARCHAR(255) NOT NULL
);

-- Tabela dependente
CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
nivel_forca DECIMAL(3,1) NOT NULL,
genero ENUM ('feminino','masculino', 'não binário'),
veiculo VARCHAR(255),
classesId BIGINT,
FOREIGN KEY (classesId) REFERENCES tb_classes(id)
);

-- Inserindo dados na tabela Classes
INSERT INTO tb_classes (habilidade, origem)
VALUES ("voar", "céu"),
("nadar", "água"),
("correr", "terra"),
("queimar", "vulcão"),
("teletransporte", "espaço");

-- Inserindo dados na tabela Personagens
INSERT INTO tb_personagens (nome, nivel_forca, genero, veiculo, classesId)
VALUES ("Miguel", 3.2, "masculino", "fusca", 3),
("Carla", 4.5, "feminino", "cavalo", 4),
("Darci", 4.9, "não binário", "moto", 1),
("Cris", 2.9, "não binário", "borboleta", 2),
("Chay", 3.6, "não binário", NULL , 5),
("Juju", 5.0, "feminino", "bicicleta", 4),
("Mike", 3.5, "masculino", "triciclo", 2),
("Ximena", 3.8, "feminino", "avião", 1);

SELECT * FROM tb_personagens;

-- Vendo os personagens com o nível de força maior do que 3.3
SELECT * FROM tb_personagens WHERE nivel_forca > 3.3;

-- Vendo os personagens com o nível de força no intervalo de 3.1 e 4.5
SELECT * FROM tb_personagens WHERE nivel_forca > 3.0 AND nivel_forca < 4.6; 
SELECT * FROM tb_personagens WHERE nivel_forca BETWEEN 3.1 AND 4.5;

-- Vendo os personagens que possuem a letra C no nome
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

-- Select unindo os dados das tabelas personagens e classes
SELECT nome, nivel_forca, genero, veiculo, tb_classes.habilidade, tb_classes.origem
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesId = tb_classes.id;

-- Select unindo dados das tabelas, onde traga apenas os personagens com a habilidade nadar
SELECT nome, nivel_forca, genero, veiculo, tb_classes.habilidade, tb_classes.origem
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesId = tb_classes.id
WHERE tb_classes.id = 2;
