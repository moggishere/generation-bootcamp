-- Atividade 4

-- Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
-- banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
-- sistema trabalhará com as informações dos produtos desta empresa.

-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

-- siga exatamente esse passo a passo:

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
-- relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
-- relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de
-- criar a foreign key de tb_categoria nesta tabela).

-- Popule esta tabela Categoria com até 5 dados.

-- Popule esta tabela Produto com até 8 dados.

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.

-- Faça um um select com Inner join entre tabela categoria e produto.

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são aves ou legumes).

-- Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
	idType BIGINT(4) AUTO_INCREMENT,
	organico BOOLEAN,
    domestico BOOLEAN,
    promocao BOOLEAN,
    PRIMARY KEY(idType)
);

INSERT INTO tb_categoria (organico, domestico, promocao) VALUES (true, true, true);
INSERT INTO tb_categoria (organico, domestico, promocao) VALUES (false, false, false);
INSERT INTO tb_categoria (organico, domestico, promocao) VALUES (false, false, true);
INSERT INTO tb_categoria (organico, domestico, promocao) VALUES (true, false, true);
INSERT INTO tb_categoria (organico, domestico, promocao) VALUES (true, false, false);

select * from tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT(10) AUTO_INCREMENT,
    idType BIGINT(4),
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255),
    season INT(1),
    preco DECIMAL(5,2),
    PRIMARY KEY(id),
    FOREIGN KEY(idType) REFERENCES tb_categoria(idType)
);

INSERT INTO tb_produto (idType, nome, tipo, season, preco) VALUES (1 ,"Uva", "FRAGIL", 1, 19.99); 
INSERT INTO tb_produto (idType, nome, tipo, season, preco) VALUES (1 ,"Maçã", "RESISTENTE", 2, 16.20); 
INSERT INTO tb_produto (idType, nome, tipo, season, preco) VALUES (2 ,"Pera", "FRAGIL", 1, 4.99); 
INSERT INTO tb_produto (idType, nome, tipo, season, preco) VALUES (4 ,"Jabuticaba",  "FRAGIL", 4, 3.99); 
INSERT INTO tb_produto (idType, nome, tipo, season, preco) VALUES (2 ,"Morango",  "FRAGIL", 1, 4.99); 
INSERT INTO tb_produto (idType, nome, tipo, season, preco) VALUES (2 ,"Laranja", "RESISTENTE", 4, 9.99); 
INSERT INTO tb_produto (idType, nome, tipo, season, preco) VALUES (2 ,"Manga", "FRAGIL", 4, 7.99); 
INSERT INTO tb_produto (idType, nome, tipo, season, preco) VALUES (4 ,"Banana", "RESISTENTE", 3, 10.99); 

select * from tb_produto;

select * from tb_produto WHERE preco>50.00;
select * from tb_produto WHERE preco>3.00 AND preco<60;
select * from tb_produto WHERE nome LIKE '%c%';
select tb_produto.nome, tb_categoria.promocao FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.idType = tb_produto.idType;
select tb_produto.nome, tb_categoria.promocao FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.idType = tb_produto.idType WHERE promocao=1;