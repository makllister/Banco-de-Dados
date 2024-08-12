use comercio;
show tables;

select * from cliente where sexo = 'M' and IDCLiente < 15;

select * from cliente order by email asc ;

select * from cliente where IDCliente between 5 and 10;

select nome from cliente where nome like '%d%';