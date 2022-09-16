-- selecionar o banco de dados
use sprint1;

-- criar tabela Musica
 create table Musica(
idMusica int primary key,
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);

-- exibir os dados da tabela
select * from Musica; 

-- inserir dados da tabela
insert into Musica values
    (1,'Meu Pedaço de Pecado','João Gomes','Piseiro'),
    (2,'Aquelas Coisas','João Gomes','Piseiro'),
    (3,'Sem Dó','Matuê','Trap'),
    (4,'A Morte do Autotune','Matuê','Trap'),
    (5,'Vampiro','Matuê','Trap'),
    (6,'É sal','Matuê','Trap'),
    (7,'Kenny G','Matuê','Trap');
    
-- exibir apenas os titulos e os artitas das músicas
select titulo, artista from Musica;

-- Exibir apenas os dados das músicas de um determinado gênero.
select * from Musica where genero = 'trap';

--  Exibir apenas os dados das músicas de um determinado artista.
select * from Musica where artista = 'João Gomes';

-- Exibir os dados da tabela ordenados pelo título da música.
select * from Musica order by titulo;

-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
select * from Musica order by artista desc;

-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
select * from Musica where titulo like 'A%';

-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
select * from Musica where artista like '%S';

-- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
select * from Musica where genero like '_I%';

-- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
select * from Musica where titulo like '%D_';

--  Elimine a tabela.
drop table Musica;