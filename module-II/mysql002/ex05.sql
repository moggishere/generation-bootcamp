-- Atividade 5

-- Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
-- do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
-- trabalhará com as informações dos produtos desta empresa.

-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

-- Siga exatamente esse passo a passo:

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
-- relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.

-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
-- relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não
-- esqueça de criar a foreign key de tb_categoria nesta tabela).

-- Popule esta tabela Categoria com até 5 dados.

-- Popule esta tabela Produto com até 8 dados.

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.

-- Faça um um select com Inner join entre tabela categoria e produto.

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são da categoria hidráulica).

-- Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	idType BIGINT(4) AUTO_INCREMENT,
	eletronico BOOLEAN,
    colecao VARCHAR(255),
    promocao BOOLEAN,
    PRIMARY KEY(idType)
);

INSERT INTO tb_categoria (eletronico, colecao, promocao) VALUES (true, "VERAO", true);
INSERT INTO tb_categoria (eletronico, colecao, promocao) VALUES (false, "INVERNO", false);
INSERT INTO tb_categoria (eletronico, colecao, promocao) VALUES (false, "PRIMAVERA", true);
INSERT INTO tb_categoria (eletronico, colecao, promocao) VALUES (true, "OUTONO", true);
INSERT INTO tb_categoria (eletronico, colecao, promocao) VALUES (true, "ANO TODO", false);

select * from tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT(10) AUTO_INCREMENT,
    idType BIGINT(4),
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255),
    spec INT(1),
    preco DECIMAL(5,2),
    PRIMARY KEY(id),
    FOREIGN KEY(idType) REFERENCES tb_categoria(idType)
);

INSERT INTO tb_produto (idType, nome, marca, spec, preco) VALUES (2 ,"FUNKOPOP", "Funko", 1, 10.99); 
INSERT INTO tb_produto (idType, nome, marca, spec, preco) VALUES (1 ,"VAIO S", "Sony", 2, 30.20); 
INSERT INTO tb_produto (idType, nome, marca, spec, preco) VALUES (2 ,"ThinkPAD", "Lenovo", 1, 65.99); 
INSERT INTO tb_produto (idType, nome, marca, spec, preco) VALUES (4 ,"ZX Spectrum",  "Timex Corporation", 4, 800.99); 
INSERT INTO tb_produto (idType, nome, marca, spec, preco) VALUES (2 ,"Dice",  "EA", 1, 400.99); 
INSERT INTO tb_produto (idType, nome, marca, spec, preco) VALUES (2 ,"Polly", "Estrela", 4, 70.99); 
INSERT INTO tb_produto (idType, nome, marca, spec, preco) VALUES (2 ,"Nike", "Nike", 4, 237.99); 
INSERT INTO tb_produto (idType, nome, marca, spec, preco) VALUES (4 ,"Sampler", "YAMAHA", 3, 50.99); 

select * from tb_produto;

select * from tb_produto WHERE preco>50.00;
select * from tb_produto WHERE preco>3.00 AND preco<60;
select * from tb_produto WHERE nome LIKE '%c%';
select tb_produto.nome, tb_categoria.promocao FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.idType = tb_produto.idType;
select tb_produto.nome, tb_categoria.promocao FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.idType = tb_produto.idType WHERE promocao=1;