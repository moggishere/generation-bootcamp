-- Atividade 2
-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
-- informações dos produtos deste ecommerce.
-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
-- Popule esta tabela com até 8 dados;
-- Faça um select que retorne os produtos com o valor maior do que 500.
-- Faça um select que retorne os produtos com o valor menor do que 500.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

create database db_products;

use db_products;

CREATE TABLE tb_sneakers(
	id bigint(10) auto_increment, -- 1234567890
    brand varchar(255),
    model varchar(255),
    collection varchar(255),
    price decimal(6, 2),
    primary key(id)
);

insert into tb_sneakers(brand, model, collection, price) values("Nike", "The Cortez", "Winter", 100.50);
insert into tb_sneakers(brand, model, collection, price) values("Nike", "Air Jordan 1", "Summer", 800.99);
insert into tb_sneakers(brand, model, collection, price) values("Nike", "Air Vapormax", "Winter", 200.69);
insert into tb_sneakers(brand, model, collection, price) values("Adidas", "Gazelle", "Spring", 120.80);
insert into tb_sneakers(brand, model, collection, price) values("Adidas", "Yeezy Boost 350 V2", "Winter", 600.50);
insert into tb_sneakers(brand, model, collection, price) values("Adidas", "Yeezy Boost 700", "Winter", 690.50);
insert into tb_sneakers(brand, model, collection, price) values("Adidas", "Lego x Adidas ZX 8000", "Lego", 90.57);
insert into tb_sneakers(brand, model, collection, price) values("PUMA", "Suede Classic XXI", "Winter", 190.57);

select * from tb_sneakers;
select * from tb_sneakers where price<500.00;
select * from tb_sneakers where price>500.00;
update tb_sneakers set collection="Summer" where id=3;
