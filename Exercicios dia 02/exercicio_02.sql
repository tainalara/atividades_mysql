CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Tabela independente
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo_pizza VARCHAR(255) NOT NULL,
tipo_borda VARCHAR(255)
);

-- Tabela dependente
CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
tamanho INT, 
complemento VARCHAR(255),
categorias_Id BIGINT,
FOREIGN KEY (categorias_Id) REFERENCES tb_categorias (id)
);

-- Inserindo dados na tabela categoria
INSERT INTO tb_categorias (tipo_pizza, tipo_borda)
VALUES ("salgada", NULL),
("salgada", "catupiry"),
("salgada", "cheddar"),
("doce", NULL),
("doce", "chocolate"),
("doce", "doce de leite"); 

-- Inserindo dados na tabela categoria
INSERT INTO tb_pizzas (nome, preco, tamanho, complemento, categorias_Id)
VALUES ("mussarela", 46.99, 8, NULL, 1),
("calabresa", 49.99, 8, "queijo", 2),
("marguerita", 51.49, 6, NULL, 3),
("4 queijos", 72.99, 8, "tomate", 1),
("Frango", 69.99, 6, NULL, 2),
("Chocolate", 54.99, 8, "banana", 4),
("Morango", 63.99, 6, NULL, 5),
("Chocolate Branco", 72.99, 8, "morango", 6);

SELECT * FROM tb_pizzas;

-- Pizzas com valor acima de R$ 50 
SELECT * FROM tb_pizzas WHERE preco >50;

-- Pizzas com valor entre R$ 50 e R$ 65
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 65;

-- Pizzas com a letra M no nome
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

-- Unindo as tabelas
SELECT nome, preco, tamanho, complemento, categorias_Id
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_Id = tb_categorias.id;

-- Unindo as tabelas e mostrando apenas as doces
SELECT nome, preco, tamanho, complemento, categorias_Id
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_Id = tb_categorias.id
WHERE tb_categorias.id IN (4, 5, 6);


