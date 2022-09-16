create database treinador;

use treinador;
drop database treinador;

create table treinador (
idTreinador int primary key auto_increment,
fkExperiente int,
nome varchar (45),	
telefoneCelular char (11),
email varchar (45),
foreign key (fkExperiente) references treinador(idTreinador)
) auto_increment = 10;

create table nadador (
idNadador int auto_increment,
nome varchar (45),
estado varchar (45),
dtNasc date,
fkTreinador int,
foreign key (fkTreinador) references treinador(idTreinador), 
primary key (idNadador, fkTreinador)
)auto_increment = 100;


insert into treinador(fkExperiente, nome, telefoneCelular, email) values
    (10, 'Lucas', '11934567654', 'lucas.treinado@gmail.com'),
    (11, 'Estela', '11975643276', 'estela.treinadora@gmail.com'),
    (12, 'Diego', '11963445125', 'diego.treinado@gmail.com'),
    (13, 'Yoshi', '11983453212', 'yoshi.treinado@gmail.com'),
    (14, 'João Pedro', '11943289052', 'joaop.treinado@gmail.com');
    
insert into nadador(nome, estado, dtNasc, fkTreinador) values
	('Igor', 'São Paulo', '2001-08-10', 11),
    ('Erick', 'Rio de Janeiro', '2002-07-23', 11),
    ('Vitoria', 'Bahia', '2003-05-14', 12),
    ('Amanda', 'Rio Grande do Sul', '2002-05-22', 13);
    
select * from treinador;
select * from nadador;

select * from treinador join nadador
	on fkTreinador = idTreinador;
    
select * from treinador as tre inner join treinador as exp on tre.idTreinador = exp.fkExperiente;
select * from nadador as nad
    join treinador as tre on tre.idTreinador = nad.fkTreinador
    inner join treinador as exp on exp.idTreinador = tre.fkExperiente;
