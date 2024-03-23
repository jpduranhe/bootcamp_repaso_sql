--SQL

-- BD
create schema tienda_disco_feria;
use tienda_disco_feria;
-- TABLAS
CREATE TABLE tipos_artista(
 id_tipo_artista int primary key auto_increment,
 descripcion_tipo_artista varchar(50) not null
);
-- drop table artistas
CREATE TABLE artistas(
 id_artista int primary key auto_increment,
 nombre_artista varchar(100) not null,
 id_tipo_artista int not null
);
ALTER TABLE artistas
modify nombre_artista varchar(150) not null;
/*
ALTER TABLE artistas
add constraint fk_tipo_artista foreign key(id_tipo_artista)
 references tipos_artista(id_tipo_artista);
*/

INSERT INTO tipos_artista (descripcion_tipo_artista)
VALUE('ROCK'),('POP'),('JAZZ'),('CLASICA');

SELECT * FROM tipos_artista;

INSERT INTO artistas (nombre_artista,id_tipo_artista)
VALUES ('ACDC',1);

UPDATE tipos_artista SET descripcion_tipo_artista='SOLISTA'
WHERE id_tipo_artista=2;

DELETE from tipos_artista WHERE id_tipo_artista >2;
DELETE from tipos_artista WHERE id_tipo_artista =1;

INSERT INTO artistas (nombre_artista,id_tipo_artista)
VALUES ('MANA',1),('LAURA PAUSINI',2),('ELVIS PRESLEY',2);




SELECT descripcion_tipo_artista FROM tipos_artista
WHERE id_tipo_artista>0;

SELECT nombre_artista,
descripcion_tipo_artista
FROM artistas ar
INNER JOIN tipos_artista ta
ON ar.id_tipo_artista = ta.id_tipo_artista;

SELECT nombre_artista as artista,
descripcion_tipo_artista as tipo
FROM artistas ar
INNER JOIN tipos_artista ta
ON ar.id_tipo_artista = ta.id_tipo_artista;

-- TABLAS
CREATE TABLE paises(
 id_pais int primary key auto_increment,
 descripcion_pais varchar(50) not null
);

INSERT INTO paises (descripcion_pais)
VALUES ('INGLATERRA'),('EEUU'),('ITALIA'),('MEXICO');
INSERT INTO paises (descripcion_pais)
VALUES ('CHILE');

SELECT * FROM paises;

ALTER TABLE artistas
add column id_pais int NULL,
add constraint fk_paises foreign key(id_pais)
 references paises(id_pais)
 
 

 UPDATE artistas SET id_pais=1 where id_artista=1;
 UPDATE artistas SET id_pais=4 where id_artista=2;
 UPDATE artistas SET id_pais=3 where id_artista=3;
 UPDATE artistas SET id_pais=2 where id_artista=4;
 
 select * from artistas;
 
 
SELECT nombre_artista
FROM artistas ar
INNER JOIN tipos_artista ta
	ON ar.id_tipo_artista = ta.id_tipo_artista
INNER JOIN paises pa
	ON ar.id_pais=pa.id_pais
where ar.id_pais=4
and   ar.id_tipo_artista=1;

 select * from artistas;

SELECT count(*),pa.descripcion_pais
FROM artistas ar
INNER JOIN tipos_artista ta
	ON ar.id_tipo_artista = ta.id_tipo_artista
INNER JOIN paises pa
	ON ar.id_pais=pa.id_pais
GROUP BY pa.descripcion_pais;
 
 
 SELECT nombre_artista, pa.descripcion_pais
FROM artistas ar
INNER JOIN tipos_artista ta
	ON ar.id_tipo_artista = ta.id_tipo_artista
LEFT JOIN paises pa
	ON ar.id_pais=pa.id_pais
 
 artistas tipos_artista
 *artistas paises
 
  SELECT nombre_artista, pa.descripcion_pais
FROM artistas ar
INNER JOIN tipos_artista ta
	ON ar.id_tipo_artista = ta.id_tipo_artista
RIGHT JOIN paises pa
	ON ar.id_pais=pa.id_pais
 
  artistas *paises
 