create database gasto;

use gasto;

create table pessoa (
idPessoa int primary key auto_increment,
nome varchar (45),
dtNasc date,
profissao varchar (45)
);

create table gasto (
idGasto int primary key auto_increment,
dt date,
valor int,
descricao varchar (45),
fkPessoa int,
foreign key (fkPessoa) references pessoa(idPessoa)
);

insert into pessoa(nome, dtNasc, profissao) values
	('Matheus', '2003-04-22', 'técnico em eletrotécnica'),
	('Lucas', '2001-04-14', 'engenheiro civil'),
    ('Estela', '2001-04-29', 'designer grafico'),
    ('Diego', '2001-06-06', 'astronauta');
    
insert into gasto (dt, valor, descricao, fkPessoa) values
	('2022-08-20', 2500, 'compra do mês', 1),
    ('2022-08-21', 550, 'compra do mês', 2),
    ('2022-08-22', 3000, 'conta de luz', 3),
    ('2022-08-23', 3500, 'conta de água', 4);
    
select * from pessoa;
select * from gasto;
select * from pessoa where profissao = 'engenheiro civil';
select * from gasto where valor > 550;

select * from gasto 
	join pessoa on idPessoa = fkPessoa;
select * from gasto
    join pessoa on idpessoa = fkpessoa
    where idpessoa = 3;

update gasto set dt = '2022-08-23' where idgasto = 4000;
update gasto set dt = '2022-08-22' where idgasto = 2500;
update gasto set dt = '2022-08-21' where idgasto = 650;

delete from gasto where idgasto > 650;