-- selecionar o banco de dados.
use sprint1;

-- criar tabela Filme.
 create table Filme(
idFilme int primary key,
titulo varchar (50),
diretor varchar (40),
genero varchar (40)
);

-- exibir os dados da tabela.
select * from Filme;

-- inserir dados da tabela.
insert into Filme values
    (1,'Rise','Akin Omotoso','Biografia'),
    (2,'Homem-Aranha no Aranhaversos','Bob Persichetti','Ação'),
    (3,'Coringa','Todd Phillips','Drama'),
    (4,'Vingadores: Ultimato','Anthony Russo','Ação'),
    (5,'Assim na Terra Como no Inferno','John Erick Dowdle','Terror'),
    (6,'Arremessando Alto','Jeremiah Zagar','Comédia'),
    (7,'Homem-Aranha: Sem Volta para Casa','Jon Watts','Fantasia');
    
--  Exibir apenas os títulos e os diretores dos filmes.
select titulo, diretor from Filme;

--  Exibir apenas os dados dos filmes de um determinado gênero.
select * from Filme where genero = 'Terror';

--  Exibir apenas os dados dos filmes de um determinado diretor.
select * from Filme where diretor = 'Jeremiah Zagar';

-- Exibir os dados da tabela ordenados pelo título do filme.
select * from Filme order by titulo;

--  Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
select * from Filme order by diretor desc;

--  Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
select * from Filme where titulo like 'A%';

--  Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra.
select * from Filme where diretor like '%O';

--  Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
select * from Filme where genero like '_o%';

--  Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
select * from Filme where titulo like '%G_';

-- Elimine a tabela.
drop table Filme;