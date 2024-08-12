create database livraria;
use livraria;

create table livros(
id_livro bigint primary key auto_increment,
nome_do_livro varchar(40) not null, 
nome_do_autor varchar(30) not null, 
sexo_do_autor char(1) not null,
numero_de_páginas int (3) not null,
nome_da_editora varchar(30) not null,
valor_do_livro decimal( 6,2) not null,
UF_da_editora char (2)not null,
publicacao int (4) not null
);
desc livros;

Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, valor_do_livro, UF_da_editora, publicacao) values ('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, valor_do_livro, UF_da_editora, publicacao) values ('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, valor_do_livro, UF_da_editora, publicacao) values ('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, valor_do_livro, UF_da_editora, publicacao) values ('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, valor_do_livro, UF_da_editora, publicacao) values ('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, valor_do_livro, UF_da_editora, publicacao) values ('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, valor_do_livro, UF_da_editora, publicacao) values('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, valor_do_livro, UF_da_editora, publicacao) values('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, valor_do_livro, UF_da_editora, publicacao) values ('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, valor_do_livro, UF_da_editora, publicacao) values ('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);

select * from livros;
select * from livros where publicacao and sexo_do_autor = 'M';
alter table livros rename column valor_do_livro to preco;
alter table livros drop column nome_do_livro;
alter table livros add nome_do_livro varchar(40) not null;

Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, preco, UF_da_editora, publicacao) values ('Cem anos de Solidão', 'Gabriel García Márquez', 'M', 416, 'Record', 48.48, 'RJ', 1967);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, preco, UF_da_editora, publicacao) values ('O Pequeno Príncipe', 'Antonine de Sain-Exupéry', 'M', 96, 'Agir', 11.90, 'SP', 1943);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, preco, UF_da_editora, publicacao) values ('1984', 'George Orwell', 'M', 416, 'Companhia das Letras', 23.09, 'RJ', 1949);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, preco, UF_da_editora, publicacao) values ('A Metamorfose', 'Franz Kafka', 'M', 168, 'Martin Claret', 16.93, 'SP', 1915);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, preco, UF_da_editora, publicacao) values ('Dom Quixote', 'Miguel de Cervantes', 'M', 1040, 'Nova Fronteira', 84.26, 'RJ', 1605);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, preco, UF_da_editora, publicacao) values ('O Alquimista', 'Paulo Coelho', 'M', 176, 'Rocco', 36.84, 'RJ', 1988);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, preco, UF_da_editora, publicacao) values ('A Culpa é das Estrelas', 'John Green', 'M', 288, 'Intrínseca', 44.92, 'SP', 2012);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, preco, UF_da_editora, publicacao) values ('A Revolução do Bichos', 'George Orwell', 'M', 152, 'Companhia de Letras', 15.17, 'RJ', 1945);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, preco, UF_da_editora, publicacao) values ('"O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkein', 'M', 576, 'Martins Fontes', 32.99, 'SP', 1954);
Insert Into livros (nome_do_livro, nome_do_autor, sexo_do_autor, numero_de_páginas, nome_da_editora, preco, UF_da_editora, publicacao) values ('O Sol é Para Todos', 'Harper Lee', 'F', 364, 'José Olympio', 52.40, 'RJ', 1960);


select * from livros where nome_do_livro and preco and nome_da_editora between 2005 and 2010 and preco> 100;
select * from livros where nome_do_livro and numero_de_páginas and sexo_do_autor = 'F';
select * from livros where preco and UF_da_editora= 'SP';
select * from livros where UF_da_editora='SP' or UF_da_editora='RJ' and nome_do_autor;
select * from livros where nome_do_autor and UF_da_editora='SP' or UF_da_editora='RJ' and numero_de_páginas< 350;
select * from livros where numero_de_páginas< 250;
select * from livros;