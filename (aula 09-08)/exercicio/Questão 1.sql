-- exibir banco de dados
create database sprint1;

-- selecionar o banco de dados
use sprint1;

-- criar tabela atleta
create table atleta (
idAtleta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int
);

-- exibir os dados da tabela
select * from atleta;

-- inserir dados da tabela
	insert into atleta values
    (0111,'Sara','Ginastica',2),
    (0122,'Fernando','Futebol',4),
    (0133,'Matheus','Basquete',5),
    (0144,'Curry','Basquete',4),
    (0155,'Falcão','Futesal',8);
    
-- exibir apenas os nomes e quantidade de medalhas dos atletas
	select nome, qtdMedalha from atleta;
    
-- exibir apenas os dados dos atletas de uma determinada modalidade
		select * from atleta where modalidade = 'basquete';
	
-- exibir os dados da tabela ordenados pela modalidade
		select * from atleta order by modalidade ;
        
-- exibir os dados da tabela, ordenados pela quantidade de medalhas, ordem decrescente
	select * from atleta order by qtdMedalha desc ;
    
-- exibir os dados da tabela, dos atletas cujo o nome contenha a letra S
	select * from atleta where nome like 'S%';
    
-- exibir os dados da tabela, dos atletas cujo nome comece com uma determinda letra
	select * from atleta where nome like 'M%';
    
-- exibir os dados da tabela, dos atletas cujo nome termine com a letra O
	select * from atleta where nome like '%O';
    
-- exibir os dados da tabela, dos atlertas cujo nome tenha a penúltima letra R 
	select * from atleta where nome like '%R_';
    
-- eliminar a tabela 
	drop table atleta ;