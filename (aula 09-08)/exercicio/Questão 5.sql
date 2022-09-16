-- selecionar o banco de dados.
	use sprint1;

-- criar tabela Professor.
	create table Curso(
		idCurso int primary key,
		nome varchar (50),
		sigla varchar (3),
        coordenador varchar (50)
);

-- exibir os dados da tabela.
select * from Curso;

-- inserir dados da tabela.
	insert into Curso values
		(010,'Análise Desenvolvimento de Sistema','ADS', 'Gerson'),
		(011,'Sistema da Informação','SIS', 'Fernanda'),
		(012,'Ciência da Computação','CCO', 'Vivian'),
		(013,'Administração','ADM', 'Vera');

-- Exibir apenas os coordenadores dos cursos
	select coordenador from Curso ;
    
--  Exibir apenas os dados dos cursos de uma determinada sigla.
	select * from Curso where sigla = 'ADS'; 
    
--  Exibir os dados da tabela ordenados pelo nome do curso.
	select * from Curso order by nome ; 
    
--  Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
	select * from Curso order by coordenador desc ; 
    
-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
	select * from Curso where nome like 'S%';
    
--  Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
	select * from Curso where nome like '%O';
    
-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
	select * from Curso where nome like '_I%';
    
--  Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
	select * from Curso where nome like '%A_';
    
-- Elimine a tabela
	drop table Curso;
    
-- Excluir Banco de Dados Sprin1.
	drop database sprint1

    