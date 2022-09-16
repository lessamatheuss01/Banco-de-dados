use sprint2;

create table musica (
idMusica int primary key,
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);
select*from musica;

insert into musica values
(1, 'Me Desculpa Jay Z', 'Baco Exu do Blues', 'Hip-Hop'),
(2, 'Flamingos', 'Baco Exu do Blues', 'Hip-Hop'),
(3, 'Girassóis de Van Gogh', 'Baco Exu do Blues', 'Hip-Hop'),
(4, 'Carta pra Amy', 'Black Alien', 'rap'),
(5, 'Au Revior', 'Black Alien', 'rap'),
(6, 'Área 51', 'Black Alien', 'rap');

create table album (
idalbum int primary key,
nome varchar (40),
dtLancamento date,
tipo varchar (40), constraint chkTipo CHECK
	(tipo in ('Digital', 'Fisico'))
);
select * from album;

insert into album values
(1, 'Bluesman',  '2018-11-23', 'Fisico'),
(2, 'Bluesman', '2018-11-23', 'Fisico'),
(3, 'Bluesman', '2018-11-23', 'Fisico'),
(4, 'Abaixo de zero', '2019-04-19', 'Digital'),
(5, 'Abaixo de zero', '2019-04-19', 'Digital'),
(6, 'Abaixo de zero', '2019-04-19', 'Digital');

alter table musica add column fkAlbum int;
desc atleta;

alter table musica add foreign key (fkAlbum)
	references album (idAlbum);
    
update musica set fkAlbum = 1 where idMusica = 1;
update musica set fkAlbum = 2 where idMusica = 2;
update musica set fkAlbum = 3 where idMusica = 3;
update musica set fkAlbum = 4 where idMusica = 4;
update musica set fkAlbum = 5 where idMusica = 5;
update musica set fkAlbum = 6 where idMusica = 6;

select * from musica;
select * from album;

select * from musica join album
	on idAlbum = fkAlbum;
    
SELECT musica.titulo, album.nome FROM musica
	JOIN album ON idAlbum = fkAlbum;
    
SELECT a.titulo as musica, 
	   e.tipo as album 
	FROM musica as a
		JOIN album as e ON idAlbum = fkAlbum;