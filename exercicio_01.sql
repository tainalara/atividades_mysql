CREATE DATABASE db_exercicio01;
USE db_exercicio01;

-- Criando a tabela 
CREATE TABLE tb_funcionarios (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (255) NOT NULL,
	data_admissao DATE,
	cargo VARCHAR (255),
	setor VARCHAR (255),
	salario DECIMAL (8,2) NOT NULL,
	PRIMARY KEY (id)
);

-- inserindo dados na tabela tb_funcionarios
INSERT INTO tb_funcionarios(nome, data_admissao, cargo, setor, salario) 
VALUES ("Aline Dias", "2024-02-25", "vendedora", "vendas", 1800.00),
("Carlos André Silva", "2020-03-02", "entregador", "logística", 3500.00),
("Juliana Almeida", "2019-11-18", "jornalista", "comunicação", 4583.00),
("André Costa Dias", "2024-03-01", "estagiário", "vendas", 1632.00),
("Letícia Vieira", "2024-03-01", "estagiária", "logística", 1532.00);

-- vendo os dados da tabela tb_funcionarios
SELECT * FROM tb_funcionarios;

-- vendo os salários maiores que 2000.00 na tabela tb_funcionarios
SELECT * FROM tb_funcionarios WHERE salario > 2000;

-- vendo os salários menores que 2000.00 na tabela tb_funcionarios
SELECT * FROM tb_funcionarios WHERE salario < 2000;

-- fazendo uma atualização na tabela tb_funcionarios
ALTER TABLE tb_funcionarios ADD contato VARCHAR (255);
    
-- fazendo uma atualização nos dados de um funcionario
UPDATE tb_funcionarios SET contato = "aline@gmail.com" WHERE Id =1;
    