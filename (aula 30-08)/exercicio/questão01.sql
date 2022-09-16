create database sprint2;
use sprint2;

create table atleta (
idAtleta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int
);

desc atleta;

insert into atleta values
(1, 'Neymar', 'Futebol', '5'),
(2, 'Curry', 'Basquete', '4'),
(3, 'Maicon', 'Natação', '3'),
(4, 'Falcão', 'Futsal', '2'),
(5, 'Jordan', 'Basquete', '1');

create table pais (
idPais int primary key,
nome varchar (30),
capital varchar (40)
);

insert into pais values
(1, 'Inglaterra', 'Londres'),
(2, 'Alemanha', 'Berlim'),
(3, 'Espanha', 'Madrid'),
(4, 'Brasil', 'Brasilia');
select * from pais;

alter table atleta add column fkPais int;
desc atleta;

alter table atleta add foreign key (fkPais)
	references pais (idPais);
select * from atleta;

update atleta set fkPais = 4 where idAtleta = 1;
update atleta set fkPais = 3 where idAtleta = 2;
update atleta set fkPais = 2 where idAtleta = 3;
update atleta set fkPais = 1 where idAtleta = 4;
update atleta set fkPais = 5 where idAtleta = 5;

insert into pais (idPais, nome, capital) values
(5, 'Estados Unidos', 'Washington');

select * from atleta join pais
	on idPais = fkPais;
    
SELECT atleta.nome, pais.nome FROM atleta
	JOIN pais ON idPais = fkPais;
    
SELECT a.nome as atleta, 
	   e.capital as pais 
	FROM atleta as a
		JOIN pais as e ON idPais = fkPais;