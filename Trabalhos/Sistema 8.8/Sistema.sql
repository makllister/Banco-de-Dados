create database sistema;
show databases;
use sistema;
create table cad_cidade(
id_cidade smallint primary key auto_increment,
nome varchar(30) not null, 
uf varchar(2) not null
);
Insert into cad_cidade (nome, uf) values ('Curitiba', 'PR'); 
Insert into cad_cidade (nome, uf) values ('Rio de Janeiro', 'RJ'); 
Insert into cad_cidade (nome, uf) values ('Ponta Grossa', 'PR');
Insert into cad_cidade (nome, uf) values ('São Paulo', 'SP'); 
Insert into cad_cidade (nome, uf) values ('Ribeirão', 'SP');
desc cad_cidade;
rename table cad_cidade to cidade;
select * from cidade;
select * from cidade where uf ='SP';
create table funcionário(
id_funcionário int primary key auto_increment,
nome varchar(30) not null, 
endereco varchar (40) not null,
numero int (6) not null,
salario decimal( 6,2) not null,
codigo_cidade int (2)not null,
sexo char(1) not null
);
Insert into funcionário (nome, endereco, numero, salario, codigo_cidade, sexo) values ('Pedro', 'Rua Flores', '30', '1500.00', '2', 'M');
Insert into funcionário (nome, endereco, numero, salario, codigo_cidade, sexo) values ('Maria', 'Av Brasil', '400', '1960.70', '1', 'F'); 
Insert into funcionário (nome, endereco, numero, salario, codigo_cidade, sexo) values ('Jose', 'Rua do João', '759', '3800.00', '4', 'F'); 
Insert into funcionário (nome, endereco, numero, salario, codigo_cidade, sexo) values ('Marco', 'Av Santa Rita', '2', '3450.50', '2','M');
select * from funcionário where salario > 2.000;
select * from funcionário where salario order by salario desc;
select * from funcionário where salario < 15000 and sexo = 'M';
select * from funcionário where nome like '%m%';
select * from funcionário where nome like'%a%';
select * from funcionário where nome not like'%m%';
alter table funcionário add setor varchar(10);
alter table funcionário rename column setor to produção;
select * from funcionário;
select stats_mode(salario) from funcionário;
select avg(salario) from funcionário;
select avg(salario) from funcionário where sexo='M';
select avg(salario) from funcionário where sexo='F';
select sum(salario) from funcionário;
select count(*) from cidade;