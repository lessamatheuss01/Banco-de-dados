create database petshop;

use petshop;

create table cliente (
idCliente int primary key auto_increment,
nome varchar (45),
telefoneFixo char(10),
telefoneCelular char (11),
endereco varchar (45)
);


create table pet (
idPet int primary key auto_increment,
nome varchar (45),
tipo varchar (45),
raca varchar (45),
dtNasc date,
fkCliente int,
foreign key (fkCliente) references cliente(idCliente)
)auto_increment=100;

insert into cliente (nome, telefoneFixo, telefoneCelular, endereco) values
	('Matheus Lima', null, '85900877832', 'Capão Redondo'),
	('Diego Vieira', null, '85900366743', 'Guarulhos'),
	('Lucas Bonfim', null, '85900488954', 'Paraiso'),
    ('Victor Augusto', null, '85900599276', 'Guarulhos');
    
insert into pet (nome, tipo, raca, dtNasc, fkCliente) values
	('Bob', 'cachorro', 'Pug', '2001-04-14', 1),
    ('Billy', 'cachorro', 'Golden Retriever', '2003-06-20', 2),
    ('Thor', 'cachorro', 'Labrador Retriever', '2010-07-15', 3),
    ('Lucky', 'gato', 'Sphynx', '2011-09-22', 4);
    truncate table pet;
    
select * from cliente;
select * from pet; 

alter table cliente modify column nome varchar (50);

select * from pet where tipo = 'cachorro';

select nome, dtNasc from pet;

select * from  pet order by nome asc;
select * from cliente order by endereco desc;
select * from pet where nome like 'L%';
select * from cliente where nome like '% Lima';
update cliente set telefoneFixo = '1144522732' where idCliente = 2;
select * from cliente;

select * from cliente join pet on fkCliente = idCliente;
select * from cliente join pet on fkCliente = idCliente where idCliente = 4;
delete from pet where idPet = 103;

select * from pet;

drop table pet;
drop table cliente;
