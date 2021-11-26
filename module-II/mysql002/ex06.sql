-- Atividade 6

-- Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
-- deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
-- informações dos produtos desta empresa.

-- O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

-- siga exatamente esse passo a passo:

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
-- relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
-- onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).

-- Popule esta tabela Categoria com até 5 dados.

-- Popule esta tabela Produto com até 8 dados.

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.

-- Faça um um select com Inner join entre tabela categoria e produto.

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são da categoria Java).

-- Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
	idType BIGINT(4) AUTO_INCREMENT,
	categoria VARCHAR(255),
    ano INT(4),
    promocao BOOLEAN,
    PRIMARY KEY(idType)
);

INSERT INTO tb_categoria(categoria, ano, promocao) VALUES ("desenvolvimento", 2020, false);
INSERT INTO tb_categoria(categoria, ano, promocao) VALUES ("criativo", 2021, false);
INSERT INTO tb_categoria(categoria, ano, promocao) VALUES ("business", 2019, true);
INSERT INTO tb_categoria(categoria, ano, promocao) VALUES ("fotografia", 2020, false);
INSERT INTO tb_categoria(categoria, ano, promocao) VALUES ("TI", 2020, true);

select * from tb_categoria;

CREATE TABLE tb_curso(
	id BIGINT(5) AUTO_INCREMENT,
    idType BIGINT(4),
    nome VARCHAR(255),
    autor VARCHAR(255),
    duracao DECIMAL(4,1),
    preco DECIMAL(5,2),
    PRIMARY KEY(id),
    FOREIGN KEY(idType) REFERENCES tb_categoria(idType)
);

INSERT INTO tb_curso(idType, nome, autor, duracao, preco) VALUES (3, "COMO SER PASTOR DE IGREJA DA PROSPERIDADE", "EDIR MACEDO", 5.50, 700.00);
INSERT INTO tb_curso(idType, nome, autor, duracao, preco) VALUES (4, "CAPTURANDO LUZ NA COMIDA", "ERIC WOLF", 2.50, 100.00);
INSERT INTO tb_curso(idType, nome, autor, duracao, preco) VALUES (5, "INTRODUÇÃO À SISTEMA DE DADOS", "LUISINHO GUERREIRO", 5.50, 39.99);
INSERT INTO tb_curso(idType, nome, autor, duracao, preco) VALUES (1, "30 DIAS DE JAVASCRIPT", "WES BOS", 8.25, 0.00);
INSERT INTO tb_curso(idType, nome, autor, duracao, preco) VALUES (2, "CENÁRIOS RÁPIDOS", "AAAAA", 3.50, 100.00);
INSERT INTO tb_curso(idType, nome, autor, duracao, preco) VALUES (3, "COMO PROSPERAR COM DÍZIMO", "EDIR MACEDO", 6.00, 20.00);
INSERT INTO tb_curso(idType, nome, autor, duracao, preco) VALUES (1, "BITCOINS E AFINS", "CRYPTOBRO", 4.50, 999.99);
INSERT INTO tb_curso(idType, nome, autor, duracao, preco) VALUES (2, "CENÁRIOS AINDA MAIS RÁPIDOS", "AAAAA", 0.50, 100.00);

select * from tb_curso;
select * from tb_curso WHERE preco>50.00;
select * from tb_curso WHERE preco>3.00 AND preco<60.00;
select * from tb_curso WHERE nome LIKE '%j%';
select tb_curso.nome, tb_categoria.promocao FROM tb_curso INNER JOIN tb_categoria ON tb_categoria.idType = tb_produto.idType;