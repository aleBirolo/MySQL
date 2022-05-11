-- scrip original
DROP DATABASE IF EXISTS superheroes;
CREATE DATABASE superheroes CHARACTER SET utf8mb4;
USE superheroes;

CREATE TABLE creador (
id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);


CREATE TABLE personajes (
  id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_real VARCHAR(20) NOT NULL,
  personaje VARCHAR(20) NOT NULL,
  inteligencia INT(10) NOT NULL,
  fuerza VARCHAR(10) NOT NULL,
  velocidad INT(11) NOT NULL,
  poder INT(11) NOT NULL,
  aparicion INT(11) NOT NULL,
  ocupacion VARCHAR(30) NULL,
  id_creador INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
  );

-- resolucion

use superheroes;


select * from creador;

select * from personajes;

insert into creador values (1,'marvel');
insert into creador values (2,'dc comics');


insert into personajes (nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('bruce banner','hulk',160,'600 mil',75,98,1962,'fisico nuclear',1);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('tony stark','iron man',170,'200 mil',70,123,1963,'inventor industrial',1);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('thor odinson','thor', 145 ,'infinita', 100 , 235, 1962,'rey de asgard',1);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('wanda maximoff','bruja escarlata',170 ,'100 mil',90 , 345,1964 ,'bruja',1);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('carol danvers','capitana marvel',157 ,'250 mil',85 , 128, 1968,'oficial de inteligencia',1);
insert into personajes(nombre_real,personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('thanos','thanos',170 ,'infinita',40 ,306 ,1973 ,'adorador de la muerte',1);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('peter parker','spiderman',165 ,'25 mil',80 ,74 ,1962 ,'fotografo',1);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('steve rogers','capitan america',145 ,'600',45 ,60 , 1941,'oficial federal',1);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('bobby drake','ice man',140 ,'2 mil',64 ,122 , 1963,'contador',1);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('barry allen','flash',160 ,'10 mil',120 ,168 ,1956 ,'cientifico forense',2);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('bruce wayne','batman',170 ,'500', 32, 47, 1939,'hombre de negocios',2);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador) 
	values ('clark kent','superman', 165,'infinita',120 ,182 ,1948 ,'reportero',2);
insert into personajes(nombre_real, personaje, inteligencia, fuerza, velocidad,poder,aparicion,ocupacion,id_creador)     
	values ('diana prince','mujer maravilla',160 ,'infinita',95 ,127 , 1949,'princesa guerrera',2);


select * from personajes;

-- no le gusta el update sobre un campo de where que sea varchar
update personajes
	set aparicion = 1938
	where  personaje = 'superman' and id_personaje <>0;
    
delete 
from superheroes.personajes as p
where p.personaje like '%flash%' and id_personaje <>0;

drop database superheroes;