-- Atividade 3
-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
-- informações dos estudantes deste registro dessa escola.
-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos estudantes para se trabalhar com o serviço dessa escola.
-- Popule esta tabela com até 8 dados;
-- Faça um select que retorne o/as estudantes com a nota maior do que 7.
-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

CREATE DATABASE db_school;

USE db_school;

CREATE TABLE tb_students(
	id bigint(5) auto_increment,
    nam varchar(255),
    grade int(2),
    rg bigint(9),
    avgScore int(2),
    primary key(id)
);

INSERT INTO tb_students(nam, grade, rg, avgScore) VALUES("Milena Campos", 2, 123456789, 9);
INSERT INTO tb_students(nam, grade, rg, avgScore) VALUES("Letícia Esteves", 3, 123456788, 6);
INSERT INTO tb_students(nam, grade, rg, avgScore) VALUES("Helena Krueger", 1, 123456787, 4);
INSERT INTO tb_students(nam, grade, rg, avgScore) VALUES("Cícero Estevão", 2, 223456789, 10);
INSERT INTO tb_students(nam, grade, rg, avgScore) VALUES("Simão Simas", 2, 125456789, 6);
INSERT INTO tb_students(nam, grade, rg, avgScore) VALUES("Francisco Santos Oliveira", 1, 123456700, 7);
INSERT INTO tb_students(nam, grade, rg, avgScore) VALUES("Marian Alverte", 2, 123456759, 9);
INSERT INTO tb_students(nam, grade, rg, avgScore) VALUES("Boneca Laura", 5, 123456489, 10);

SELECT * FROM tb_students;
SELECT * FROM tb_students WHERE avgScore<7;
SELECT * FROM tb_students WHERE avgScore>=7;
UPDATE tb_students SET avgScore="9" where id=3;