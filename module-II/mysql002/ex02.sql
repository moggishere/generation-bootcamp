-- Atividade 2

-- Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
-- deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
-- informações dos produtos desta empresa.

-- O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

-- siga exatamente esse passo a passo:

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
-- relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

-- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
-- criar a foreign key de tb_categoria nesta tabela).

-- Popule esta tabela Categoria com até 5 dados.

-- Popule esta tabela pizza com até 8 dados.

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.

-- Faça um um select com Inner join entre tabela categoria e pizza.

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são pizza doce).
-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	tipo VARCHAR(255) NOT NULL,
    tamanho CHAR(1) NOT NULL,
    preco DECIMAL(4,2),
    salgado BOOLEAN,
    PRIMARY KEY(preco)
);

INSERT INTO tb_categoria (tipo, tamanho, preco, salgado) VALUES ("PROMO QUARTA E QUINTA", "G", 30.50, true);
INSERT INTO tb_categoria (tipo, tamanho, preco, salgado) VALUES ("NORMAL", "M", 27.99, true);
INSERT INTO tb_categoria (tipo, tamanho, preco, salgado) VALUES ("NORMAL DOCE", "P", 18.99, false);
INSERT INTO tb_categoria (tipo, tamanho, preco, salgado) VALUES ("FESTA DOCE", "G", 60.99, false);
INSERT INTO tb_categoria (tipo, tamanho, preco, salgado) VALUES ("DESAFIO 5MIN", "G", 80.50, true);

select * from tb_categoria;

CREATE TABLE tb_pizza(
	id BIGINT(5) AUTO_INCREMENT,
	sabor VARCHAR(255) NOT NULL,
    massa VARCHAR(20),
    borda VARCHAR(20),
    preco DECIMAL(4,2),
    PRIMARY KEY(id),
    FOREIGN KEY(preco) REFERENCES tb_categoria(preco)
);

INSERT INTO tb_pizza (sabor, massa, borda, preco) VALUES ("PORTGUGUESA", "FINA", "NORMAL", 27.99);
INSERT INTO tb_pizza (sabor, massa, borda, preco) VALUES ("BANANA C/ CHOCOLATE", "FINA", "DOCE DE LEITE", 18.99);
INSERT INTO tb_pizza (sabor, massa, borda, preco) VALUES ("MUSSARELA", "FINA", "NORMAL", 27.99);
INSERT INTO tb_pizza (sabor, massa, borda, preco) VALUES ("CALABRESA", "FINA", "NORMAL", 27.99);
INSERT INTO tb_pizza (sabor, massa, borda, preco) VALUES ("JUMBO C/ TUDO", "GROSSA", "REQUEIJÃO", 80.50);
INSERT INTO tb_pizza (sabor, massa, borda, preco) VALUES ("MUSSARELA E CALABRESA", "FINA", "NORMAL", 30.50);
INSERT INTO tb_pizza (sabor, massa, borda, preco) VALUES ("MORANGO C/ BRIGADEIRO E VELAS", "FINA", "DOCE DE LEITE", 60.99);
INSERT INTO tb_pizza (sabor, massa, borda, preco) VALUES ("AMERICANA", "GROSSA", "NORMAL", 27.99);

select * from tb_pizza;
select * from tb_pizza WHERE preco>45.00;
select * from tb_pizza WHERE preco>29.00 AND preco<60.00;
select * from tb_pizza WHERE sabor LIKE '%c%';
select tb_pizza.sabor, tb_categoria.salgado FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.preco = tb_pizza.preco; -- referencia a tabela de categoria pra ver se é salgado ou não
select tb_pizza.sabor, tb_categoria.salgado FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.preco = tb_pizza.preco WHERE salgado=true; -- pega a seleção de cima e depois filtra pra mostrar apenas os salgados
