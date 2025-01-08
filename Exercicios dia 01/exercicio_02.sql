CREATE DATABASE db_exercicio02;
USE db_exercicio02;

-- Criando a tabela 
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (255) NOT NULL,
    marca VARCHAR (255),
	setor VARCHAR (255),
	quantidade_estoque INT,
	preco DECIMAL (8,2) NOT NULL,
	PRIMARY KEY (id)
);

-- inserindo dados na tabela tb_produtos
INSERT INTO tb_produtos(nome, marca, setor, quantidade_estoque, preco)
VALUES ("televisão", "Samsung", "casa", 1324, 2999.00),
("televisão", "Phillips", "casa", 832, 1899.00),
("secador de cabelo", "Taiffer", "beleza", 465, 399.00),
("monitor", "Samsung", "informática", 3256, 895.00),
("lava e seca", "Samsung", "casa", 785, 4999.00),
("kit teclado", "Dell", "informática", 3256, 189.00),
("ventilador", "Arno", "casa", 5623, 205.00),
("furadeira", "Mondial", "ferramentas", 845, 349.00);

-- exibir os itens da tabela tb_produtos
SELECT * FROM tb_produtos;

-- exibir os itens da tabela tb_produtos que custam mais de 500.00
SELECT * FROM tb_produtos WHERE preco > 500;

-- exibir os itens da tabela tb_produtos que custam menos de 500.00
SELECT * FROM tb_produtos WHERE preco < 500;

-- atualização na tabela tb_produtos
ALTER TABLE tb_produtos ADD dias_entrega INT;

-- atualização dos dados da tabela tb_produtos
UPDATE tb_produtos SET dias_entrega = 5 WHERE Id=2;
UPDATE tb_produtos SET dias_entrega = 3 WHERE Id=8;
UPDATE tb_produtos SET dias_entrega = 6 WHERE Id=5;

