create database empresa;

use empresa;

drop database empresa;
create table setor (
idSetor int primary key auto_increment,
nome varchar (45),
numAndar int
);


create table funcionario (
idFunc int primary key auto_increment,
nome varchar (45),
salario varchar (45), constraint chkSalario check (salario > 0),
telefoneCelular char(11),
fkSetor int,
foreign key (fkSetor) references setor (idSetor)
);

create table acompanhante (
idAcom int primary key auto_increment,
nome varchar (45),
parentesco varchar (45),
dtNasc date,
fkFunc int,
foreign key (fkFunc) references funcionario (idFunc)
);

insert into setor (nome, numAndar) values 
	('Recursos Humanos', 1),
    ('Tecnologia da informação', 2),
    ('Logistica', 3),
    ('Finaceiro', 4);

insert into funcionario (nome, salario, telefoneCelular, fkSetor) values
	('Matheus', 12000, '11988654329', 1),
    ('Diego', 10500, '11976438891', 2),
    ('Lucas', 11250, '11965432892', 3),
    ('Estela', 13400, '11934289752', 4);

insert into acompanhante(nome, parentesco, dtNasc, fkFunc) values
	('João', 'irmão', '2011-08-14', 1),
    ('Sofia', 'irmã', '1999-04-09', 2),
    ('Victor', 'irmão', '2001-08-10', 3),
    ('Alice', 'namorada', '2003-06-20', 4);
    
select * from setor;
select * from funcionario;
select * from acompanhante;

select * from setor join funcionario 
	on fkSetor = idSetor;
    
select * from funcionario join acompanhante 
	on fkFunc = idFunc where idFunc = 3;
    
select * from funcionario join acompanhante 
	on fkFunc = idFunc;
    
    