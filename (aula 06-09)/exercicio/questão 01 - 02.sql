use sprint1;

create table professor (
idProfessor int primary key,
nome varchar (50),
sobrenome varchar (30),
especialidade1 varchar (40),
especialidade2 varchar (40)
);

insert into professor values
	(1, 'Vivian', 'Silva', 'Modelagem BD', 'Javascript'),
    (2, 'Paulo', null,'Modelagem BD', 'HTML'),
    (3, 'Fernanda','Caramico', 'CSS', 'HTML'),
    (4, 'Yoshi', null, 'HTML', 'Javascript'),
    (5, 'Matheus', 'Lessa', 'Modelagam BD', 'CSS'),
    (6, 'João', 'Pedro', 'CSS', 'Javascrpit');
    
create table disciplina (
idDisc int primary key,
nomeDisc varchar (45)
);

insert into disciplina values
(1, 'Projeto Inovação'),
(2, 'Algoritimo'),
(3, 'Banco de dados');

alter table disciplina add column fkProfessor int;

alter table disciplina add foreign key (fkprofessor)
	references professor (idProfessor);
    
update disciplina set fkProfessor = 1 where idDisc = 3;
update disciplina set fkProfessor = 2 where idDisc = 3;
update disciplina set fkProfessor = 3 where idDisc = 1;
update disciplina set fkProfessor = 4 where idDisc = 2;
update disciplina set fkProfessor = 5 where idDisc = 3;
update disciplina set fkProfessor = 6 where idDisc = 1;

select * from disciplina join professor
	on idProfessor = fkProfessor;

SELECT disciplina.nomeDisc, professor.nome FROM disciplina
	JOIN professor ON idProfessor = fkProfessor;
    
select * from disciplina join professor 
	on idProfessor = fkProfessor where sobrenome = 'Lessa';
    
select disciplina.nomeDisc, professor.especialidade1 from disciplina join professor 
	on idProfessor = fkProfessor order by especialidade1;
    

-- Questão 02
use sprint1;

create table curso (
idCurso int primary key auto_increment,
nome varchar (50),
sigla varchar (3),
coordenador varchar (45)
);

insert into curso (nome, sigla, coordenador) values
('Analise e desenvolvimento', 'ADS', 'Lucas'),
('Sistema da Informação', 'SIS', 'Diego'),
('Ciencia da Computação', 'CCO', 'Matheus');

create table estudante (
idEstudante int primary key auto_increment,
nome varchar (45),
sobrenome varchar (45)
);

insert into estudante (nome, sobrenome) values
('Vitor', 'Augusto'),
('Estela', 'Polverini'),
('Igor', 'Gabriel');

alter table estudante add column fkCurso int;
alter table estudante add foreign key (fkCurso)
	references curso (idCurso);
    
update estudante set fkCurso = 1 where idEstudante = 1;
update estudante set fkCurso = 2 where idEstudante = 3;
update estudante set fkCurso = 3 where idEstudante = 2;

select * from estudante join curso
	on idCurso = fkCurso;
    
    SELECT curso.nome, estudante.nome FROM curso
	JOIN estudante ON idCurso = fkCurso;
    
    select * from estudante join curso 
	on idCurso = fkCurso where sobrenome = 'Polverini';

alter table curso add constraint chksigla check (sigla in ('ADS', 'SIS', 'CCO'));
