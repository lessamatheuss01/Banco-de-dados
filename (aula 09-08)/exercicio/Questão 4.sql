-- selecionar o banco de dados.
	use sprint1;

-- criar tabela Professor.
	create table Professor(
		idProfessor int primary key,
		nome varchar (50),
		especialidade varchar (40),
		dtNasc date
);

-- exibir os dados da tabela.
select * from Professor;

-- inserir dados da tabela.
	insert into Professor values
		(0011,'Henrique','Português','1983-08-08'),
		(0012,'Arthur','Matemática','2002-08-14'),
		(0013,'Leonardo','Química','1990-04-22'),
		(0014,'Alice','Fisica','2001-07-14'),
		(0015,'Marcos','Biologia','1991-03-12'),
		(0016,'João','História','1999-05-10');

--  Exibir apenas as especialidades dos professores.
	select especialidade from Professor ;

--  Exibir apenas os dados dos professores de uma determinada especialidade.
	select * from Professor where especialidade = 'Fisica' ;

-- Exibir os dados da tabela ordenados pelo nome do professor.
	select * from Professor order by nome ;
    
-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
	select * from Professor order by dtNasc desc ;
    
--  Exibir os dados da tabela, dos professores cujo nome COMECE com uma determinada letra.
	select * from Professor where nome like 'A%';
   
--  Exibir os dados da tabela, dos professores cujo nome TERMINE com uma determinada letra.
	select * from Professor where nome like '%O' ;
    
--  Exibir os dados da tabela, dos professores cujo nome tenha como SEGUNDA LETRA uma determinada letra.
	select * from Professor where nome like '_A%';
    
--  Exibir os dados da tabela, dos professores cujo nome tenha como PENÚLTIMA LETRA uma determinada letra.
	select * from Professor where nome like '%D_'; 
    
-- Elimine a tabela.
	drop table Professor ;