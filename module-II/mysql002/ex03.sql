-- Atividade 3

-- Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
-- deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
-- informações dos produtos desta empresa.

-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

-- siga exatamente esse passo a passo:

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
-- relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
-- esqueça de criar a foreign key de tb_categoria nesta tabela).

-- Popule esta tabela Categoria com até 5 dados.

-- Popule esta tabela Produto com até 8 dados.

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.

-- Faça um um select com Inner join entre tabela categoria e produto.

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são cosméticos).
-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	idType BIGINT(4) AUTO_INCREMENT,
	prescricao_obrigatoria BOOLEAN,
    seguro BOOLEAN,
    PRIMARY KEY(idType)
);

INSERT INTO tb_categoria (prescricao_obrigatoria, seguro) VALUES (true, true);
INSERT INTO tb_categoria (prescricao_obrigatoria, seguro) VALUES (false, false);
INSERT INTO tb_categoria (prescricao_obrigatoria, seguro) VALUES (true, false);
INSERT INTO tb_categoria (prescricao_obrigatoria, seguro) VALUES (false, true);
INSERT INTO tb_categoria (prescricao_obrigatoria, seguro) VALUES (true, null);

select * from tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT(10) AUTO_INCREMENT,
    idType BIGINT(4),
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255),
    idade_minima INT(3),
    preco DECIMAL(5,2),
    PRIMARY KEY(id),
    FOREIGN KEY(idType) REFERENCES tb_categoria(idType)
);

INSERT INTO tb_produto (idType, nome, tipo, idade_minima, preco) VALUES ( 1,"Alginac 1000", "REMEDIO", 13, 26.99); 
INSERT INTO tb_produto (idType, nome, tipo, idade_minima, preco) VALUES ( 1,"Alopurinol", "REMEDIO", 16, 13.80); 
INSERT INTO tb_produto (idType, nome, tipo, idade_minima, preco) VALUES ( 2,"Álcool Gel Wath", "HIGIENE", 0, 7.99); 
INSERT INTO tb_produto (idType, nome, tipo, idade_minima, preco) VALUES (4,"Peptídeo de Colágeno",  "NUTRICAO", 6, 206.99); 
INSERT INTO tb_produto (idType, nome, tipo, idade_minima, preco) VALUES (2,"Mentos Pure Fresh",  "DOCE", 0, 14.99); 
INSERT INTO tb_produto (idType, nome, tipo, idade_minima, preco) VALUES ( 2,"Gatorade 600ml", "DOCE", 0, 8.99); 
INSERT INTO tb_produto (idType, nome, tipo, idade_minima, preco) VALUES ( 2,"Barra de proteína", "DOCE", 0, 4.99); 
INSERT INTO tb_produto (idType, nome, tipo, idade_minima, preco) VALUES ( 4,"Dorflex Cartela","REMEDIO", 3, 6.99); 

select * from tb_produto;

select * from tb_produto WHERE preco>50.00;
select * from tb_produto WHERE preco>3.00 AND preco<60;
select * from tb_produto WHERE nome LIKE '%b%';
select tb_produto.nome, tb_categoria.prescricao_obrigatoria FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.idType = tb_produto.idType;
select tb_produto.nome, tb_categoria.prescricao_obrigatoria FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.idType = tb_produto.idType WHERE prescricao_obrigatoria=0;