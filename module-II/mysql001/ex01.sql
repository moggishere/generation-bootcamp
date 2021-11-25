-- Atividade 1
-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
-- trabalhará com as informações dos funcionaries desta empresa.
-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
-- Popule esta tabela com até 5 dados;
-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

create database db_employees;

use db_employees;

Create table tb_persons(
	id bigint(5) auto_increment, -- 00000
    nam varchar(255) not null,
    salary int,
    cpf char(11) not null,
    vacation boolean,
    primary key(id)
);

insert into tb_persons(nam, salary, cpf, vacation)  values ("SONIA ALVARENGA" , 1500, 12345678901, false);
insert into tb_persons(nam, salary, cpf, vacation) values ("WILSON VAI", 4000, 12345678902, false);
insert into tb_persons(nam, salary, cpf, vacation) values("OH BOFE", 2000, 12345678903, true);
insert into tb_persons(nam, salary, cpf, vacation) values("REI REI", 15000, 12345678904, true);
insert into tb_persons(nam, salary, cpf, vacation) values("MEU PAI", 1000000, 12345678905, true);

select * from tb_persons;
select * from tb_persons where salary<2000;
select * from tb_persons where salary>2000;
update tb_persons set vacation=false where id=4;
 