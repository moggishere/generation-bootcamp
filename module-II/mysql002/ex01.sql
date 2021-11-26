/* Atividade 1

Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

siga exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).
salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade. */

CREATE DATABASE db_generation_gameonline;

USE db_generation_gameonline;

CREATE TABLE tb_classe(
	class_name VARCHAR(3),
    mp_scaling DECIMAL(3,2),
    hp_scaling DECIMAL(4,2),
    primary key(class_name)
);

INSERT INTO tb_classe (class_name, mp_scaling, hp_scaling) VALUES ("DRK", 4.25, 50.20);
INSERT INTO tb_classe (class_name, mp_scaling, hp_scaling) VALUES ("BRD", 1.25, 10.25);
INSERT INTO tb_classe (class_name, mp_scaling, hp_scaling) VALUES ("BLM", 8.50, 10.20);
INSERT INTO tb_classe (class_name, mp_scaling, hp_scaling) VALUES ("DRG", 0.00, 20.20);
INSERT INTO tb_classe (class_name, mp_scaling, hp_scaling) VALUES ("WHM", 7.25, 15.80);

select * from tb_classe;

CREATE TABLE tb_personagem(
	id BIGINT(9) auto_increment,
    player_name VARCHAR(24) NOT NULL,
    atk BIGINT(5),
    def BIGINT(5),
    race VARCHAR(255),
    class_name VARCHAR(3),
    primary key(id),
    foreign key(class_name) REFERENCES tb_classe(class_name)
);

INSERT INTO tb_personagem (player_name, atk, def, race, class_name) VALUES ("Batata Batatosa", 1000, 1500, "Lalafel", "WHM");
INSERT INTO tb_personagem (player_name, atk, def, race, class_name) VALUES ("Touchtone Telephone", 5000, 4000, "Hrothgar", "BRD");
INSERT INTO tb_personagem (player_name, atk, def, race, class_name) VALUES ("Ceebeetee Haunchefart", 3000, 2000, "Elezen", "DRK");
INSERT INTO tb_personagem (player_name, atk, def, race, class_name) VALUES ("Placeholder Placeholdy", 1456, 4333, "Lalafel", "BLM");
INSERT INTO tb_personagem (player_name, atk, def, race, class_name) VALUES ("Fghjsd Bot", 1000, 3000, "Lalafel", "DRG");
INSERT INTO tb_personagem (player_name, atk, def, race, class_name) VALUES ("Sfia Alt", 9999, 19999, "Lalafel", "BLM");
INSERT INTO tb_personagem (player_name, atk, def, race, class_name) VALUES ("React Andy", 1456, 4333, "Hyur", "BRD");
INSERT INTO tb_personagem (player_name, atk, def, race, class_name) VALUES ("Feet Pics", 3000, 4333, "Miqote", "WHM");

select * from tb_personagem;
select * from tb_personagem WHERE atk>2000;
select * from tb_personagem WHERE def<2000 AND def>1000;
select * from tb_personagem WHERE player_name LIKE '%c%';
select tb_personagem.player_name, tb_classe.mp_scaling, tb_classe.hp_scaling 
FROM tb_classe INNER JOIN tb_personagem ON tb_classe.class_name = tb_personagem.class_name;
select * from tb_personagem WHERE class_name="WHM";