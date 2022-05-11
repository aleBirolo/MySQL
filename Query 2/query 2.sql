use tienda;


select *
from fabricante;

/*
insert into fabricante (codigo, nombre) values (10, 'HP');
insert into fabricante (codigo, nombre) values (11, 'LG');
*/

/*
UPDATE fabricante
	set nombre= 'HP2'
    where codigo = 10;
*/

/*
DELETE
FROM tienda.fabricante
 where codigo =10;
select *
from */

select *
from fabricante 
where nombre = 'Asus' or codigo = 9;

select count(*) as Cantidad
from fabricante;

select max(Codigo) as Maximo
from fabricante;

select *
from fabricante
where codigo in (3,5);

select *
from fabricante
where nombre like '%su%';

select *
from fabricante 
where codigo BETWEEN 2 and 7;

create table producto_2(
codigo int unsigned primary key,
nombre varchar(200) not null,
precio double not null,
codigo_fabricante int UNSIGNED not null, FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);

insert into producto_2 values (1, 'Disco duro sata3 1tb', 86.99, 5);

select *
from producto_2;


select *
from producto p
where exists (
			select f.codigo
            from fabricante f
            where f.codigo = p.codigo_fabricante
            );

select *
from producto p
where not exists (
			select f.codigo
            from fabricante f
            where f.codigo = p.codigo_fabricante
            );
            
select *
from producto
coss join fabricante;


select * from fabricante;
select * from producto;


select *
from fabricante 
order by nombre desc;

select *
from fabricante 
order by nombre, codigo;

select f.nombre, p.nombre, p.precio
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
order by  f.nombre, p.nombre;


select f.codigo, f.nombre
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.codigo, f.nombre;

select f.nombre, count(*) as cantiad
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nombre;


select f.nombre, count(*) as cantiad
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nombre
HAVING count(*) > 1;

select f.nombre, count(*) as cantiad, sum(p.precio)
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nombre
HAVING count(*) > 1 and f.nombre <> 'Lenovo';


select f.nombre, count(*) as cantiad, sum(p.precio)
from fabricante f, producto p
where f.codigo = p.codigo_fabricante
group by f.nombre
HAVING sum(p.precio) > 300;









