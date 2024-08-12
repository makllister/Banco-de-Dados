create database funcionários;
use funcionários;

create table employees(
	id int primary key,
    nome varchar(120),
    sobrenome varchar(120),
    departamento varchar(120),
    salario decimal(10,2)
);
show tables;

insert into employees(id, nome, sobrenome, departamento, salario) values (1, 'Paul', 'Garrix', 'Suprimentos', 3527.25);
insert into employees(id, nome, sobrenome, departamento, salario) values (2, 'Astrid', 'Fox', 'Financeiro', 2845.56);
insert into employees(id, nome, sobrenome, departamento, salario) values (3, 'Matthias', 'Johnson', 'Financeiro', 3009.41);
insert into employees(id, nome, sobrenome, departamento, salario) values (4, 'Lucy', 'Patterson', 'Financeiro', 3547.25);
insert into employees(id, nome, sobrenome, departamento, salario) values (5, 'Tom', 'Page', 'Suprimentos', 5974.41);
insert into employees(id, nome, sobrenome, departamento, salario) values (6, 'Claudia','Conte', 'Suprimentos', 4714.12);
insert into employees(id, nome, sobrenome, departamento, salario) values (7, 'Walter', 'Deer', 'Financeiro', 3547.25);
insert into employees(id, nome, sobrenome, departamento, salario) values (8, 'Stephanie', 'Marx', 'Suprimentos', 2894.51);
insert into employees(id, nome, sobrenome, departamento, salario) values (9, 'Luca',  'Pavarotti', 'Financeiro', 4123.45);
insert into employees(id, nome, sobrenome, departamento, salario) values (10, 'Victoria', 'Secret',  'Suprimentos', 4789.53);

select *from employees;
delete from employees where id=1;
select nome, sobrenome from employees;
select sobrenome, salario from employees;
select nome, sobrenome, salario from employees where salario> 3500;
select sobrenome, departamento , salario from employees where salario > 5000 or salario< 3000;
select id * salario from employees;
select departamento, count(*) as departamento from employees group by departamento;
select departamento, min(salario) as minimo_salario from employees group by departamento;
select departamento, max(salario) as maximo_salario from employees group by departamento;
select departamento, sum(salario) as total_salario from employees where salario> 3500 group by departamento;