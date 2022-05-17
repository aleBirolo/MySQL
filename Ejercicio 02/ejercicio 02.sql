/*
DROP DATABASE IF EXISTS personal;
CREATE DATABASE personal CHARACTER SET utf8mb4;
USE personal;

CREATE TABLE departamentos (
id_depto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre_depto VARCHAR(20) NOT NULL,
  ciudad VARCHAR(15) NULL,
  cod_director VARCHAR(12) NULL
);


CREATE TABLE empleados (
  id_emp INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre CHAR(30) NOT NULL,
  sex_emp CHAR(1) NOT NULL,
  fec_nac DATE NOT NULL,
  fec_incorporacion DATE NOT NULL,
  sal_emp FLOAT NOT NULL,
  comision_emp FLOAT NOT NULL,
  cargo_emp VARCHAR(15) NOT NULL,
  cod_jefe VARCHAR(12) NULL,  
	id_depto INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_depto) REFERENCES departamentos(id_depto)
  );


-- Insertar datos en la tabla `departamentos`

INSERT INTO `departamentos` VALUES (1000,'GERENCIA','CIUDAD REAL','31.840.269');
INSERT INTO `departamentos` VALUES (1500,'PRODUCCIÓN','CIUDAD REAL','16.211.383');
INSERT INTO `departamentos` VALUES (2000,'VENTAS','CIUDAD REAL','31.178.144');
INSERT INTO `departamentos` VALUES (2100,'VENTAS','BARCELONA','16.211.383');
INSERT INTO `departamentos` VALUES (2200,'VENTAS','VALENCIA','16.211.383');
INSERT INTO `departamentos` VALUES (2300,'VENTAS','MADRID','16.759.060');
INSERT INTO `departamentos` VALUES (3000,'INVESTIGACIÓN','CIUDAD REAL','16.759.060');
INSERT INTO `departamentos` VALUES (3500,'MERCADEO','CIUDAD REAL','22.222.222');
INSERT INTO `departamentos` VALUES (4000,'MANTENIMIENTO','CIUDAD REAL','333.333.333');
INSERT INTO `departamentos` VALUES (4100,'MANTENIMIENTO','BARCELONA','16.759.060');
INSERT INTO `departamentos` VALUES (4200,'MANTENIMIENTO','VALENCIA','16.759.060');
INSERT INTO `departamentos` VALUES (4300,'MANTENIMIENTO','MADRID','16.759.060');

-- Insertar datos en la tabla `empleados`

INSERT INTO `empleados` VALUES (222,'José Giraldo','M','1985-01-20','2000-11-01',1200000,400000,'Asesor','22.222.222',3500);
INSERT INTO `empleados` VALUES (333,'Pedro Blanco','M','1987-10-28','2000-10-01',800000,3000000,'Vendedor','31.178.144',2000);
INSERT INTO `empleados` VALUES (444,'Jesús Alfonso','M','1988-03-14','2000-10-01',800000,3500000,'Vendedor','31.178.144',2000);
INSERT INTO `empleados` VALUES (555,'Julián Mora','M','1989-07-03','2000-10-01',800000,3100000,'Vendedor','31.178.144',2200);
INSERT INTO `empleados` VALUES (666,'Manuel Millán','M','1990-12-08','2004-06-01',800000,3700000,'Vendedor','31.178.144',2300);
INSERT INTO `empleados` VALUES (777,'Marcos Cortez','M','1986-06-23','2000-04-16',2550000,500000,'Mecánico','333.333.333',4000);
INSERT INTO `empleados` VALUES (782,'Antonio Gil','M','1980-01-23','2010-04-16',850000,1500000,'Técnico','16.211.383',1500);
INSERT INTO `empleados` VALUES (219,'Melissa Roa','F','1960-06-19','2001-03-16',2250000,2500000,'Vendedor','31.178.144',2100);
INSERT INTO `empleados` VALUES (111,'Irene Díaz','F','1979-09-28','2004-06-01',1050000,200000,'Mecánico','333.333.333',4200);
INSERT INTO `empleados` VALUES (383,'Luis Pérez','M','1956-02-25','2000-01-01',5050000,0,'Director','31.840.269',1500);
INSERT INTO `empleados` VALUES (060,'Darío Casas','M','1960-04-05','1992-11-01',4500000,500000,'Investigador','31.840.269',3000);
INSERT INTO `empleados` VALUES (802,'William Daza','M','1982-10-09','1999-12-16',2250000,1000000,'Investigador','16.759.060',3000);
INSERT INTO `empleados` VALUES (221,'Carla López','F','1975-05-11','2005-07-16',4500000,500000,'Jefe Mercadeo','31.840.269',3500);
INSERT INTO `empleados` VALUES (331,'Carlos Rozo','M','1975-05-11','2001-09-16',750000,500000,'Vigilante','31.840.269',3500);
INSERT INTO `empleados` VALUES (099,'Diana Solarte','F','1957-11-19','1990-05-16',1250000,500000,'Secretaria','31.840.269',1000);
INSERT INTO `empleados` VALUES (144,'Rosa Angulo','F','1957-03-15','1998-08-16',3250000,3500000,'Jefe Ventas','31.840.269',2000);
INSERT INTO `empleados` VALUES (269,'María Rojas','F','1959-01-15','1990-05-16',6250000,1500000,'Gerente',NULL,1000);
INSERT INTO `empleados` VALUES (343,'Elisa Rojas','F','1979-09-28','2004-06-01',3000000,1000000,'Jefe Mecánicos','31.840.269',4000);
INSERT INTO `empleados` VALUES (334,'Marisol Pulido','F','1979-10-01','1990-05-16',3250000,1000000,'Investigador','16.759.060',3000);
INSERT INTO `empleados` VALUES (335,'Ana Moreno','F','1992-01-05','2004-06-01',1200000,400000,'Secretaria','16.759.060',3000);
INSERT INTO `empleados` VALUES (336,'Carolina Ríos','F','1992-02-15','2000-10-01',1250000,500000,'Secretaria','16.211.383',1500);
INSERT INTO `empleados` VALUES (337,'Edith Muñoz','F','1992-03-31','2000-10-01',800000,3600000,'Vendedor','31.178.144',2100);
INSERT INTO `empleados` VALUES (338,'Abel Gómez','M','1939-12-24','2000-10-01',1050000,200000,'Mecánico','333.333.333',4300);
INSERT INTO `empleados` VALUES (689,'Mario Llano','M','1945-08-30','1990-05-16',2250000,2500000,'Vendedor','31.178.144',2300);
INSERT INTO `empleados` VALUES (785,'Joaquín Rosas','M','1947-07-07','1990-05-16',2250000,2500000,'Vendedor','31.178.144',2200);
INSERT INTO `empleados` VALUES (898,'Iván Duarte','M','1955-08-12','1998-05-16',1050000,200000,'Mecánico','333.333.333',4100);
*/

use personal;

-- 1. Obtener los datos completos de los empleados.
select *
from personal.empleados ;

-- 2. Obtener los datos completos de los departamentos.
select *
from personal.departamentos;

-- 3. Listar el nombre de los departamentos.
select d.nombre_depto
from personal.departamentos as d;

-- 4. Obtener el nombre y salario de todos los empleados.
select e.nombre, e.sal_emp
from personal.empleados as e;

-- 5. Listar todas las comisiones.
select distinct( e.comision_emp)
from personal.empleados as e;

-- 6. Obtener los datos de los empleados cuyo cargo sea ‘Secretaria’.
select *
from personal.empleados as e
where e.cargo_emp ="Secretaria";

-- 7. Obtener los datos de los empleados vendedores, ordenados por nombre alfabéticamente.
select *
from personal.empleados as e
where e.cargo_emp ="Vendedor"
ORDER BY (e.nombre) asc;

-- 8. Obtener el nombre y cargo de todos los empleados, ordenados por salario de menor a mayor.
select e.nombre, e.cargo_emp
from personal.empleados as e
where e.cargo_emp ="Vendedor"
ORDER BY (e.sal_emp) asc;

-- 9. Elabore un listado donde para cada fila, figure el alias ‘Nombre’ y ‘Cargo’ para las respectivas tablas de empleados.
select *, e.nombre as Nombre, e.cargo_emp as Cargo
from personal.empleados as e;

-- 10. Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión de menor a mayor.
select e.nombre, e.sal_emp, e.comision_emp
from personal.empleados as e
where e.id_depto = 2000
order by e.comision_emp asc;

-- 11. Obtener el valor total a pagar que resulta de sumar el salario y la comisión de los empleados del departamento 3000 una bonificación de 500, en orden alfabético del empleado.
select e.nombre, ((e.sal_emp + e.comision_emp)+500) as "Valor Total a Pagar"
from personal.empleados as e
where e.id_depto=3000
order by e.nombre asc;

-- 12. Muestra los empleados cuyo nombre empiece con la letra J.
select e.nombre
from personal.empleados as e
where e.nombre like "J%";

-- 13. Listar el salario, la comisión, el salario total (salario + comisión) y nombre, de aquellos empleados que tienen comisión superior a 1000.
select e.nombre, e.sal_emp, e.comision_emp
from personal.empleados as e
where e.comision_emp > 1000;

-- 14. Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen comisión.
select e.nombre, e.sal_emp, e.comision_emp
from personal.empleados as e
where e.comision_emp = 0;

-- 15. Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
select e.nombre, e.sal_emp, e.comision_emp
from personal.empleados as e
where e.comision_emp > e.sal_emp;

-- 16. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
select e.nombre, e.sal_emp, e.comision_emp
from personal.empleados as e
where  e.comision_emp  <= (e.sal_emp *0.3);

-- 17. Hallar los empleados cuyo nombre no contiene la cadena “MA”
select e.nombre
from personal.empleados as e
where  e.nombre NOT like "%MA%";

-- 18. Obtener los nombres de los departamentos que sean “Ventas” ni “Investigación” ni ‘Mantenimiento.
select DISTINCT (d.nombre_depto)
from personal.departamentos as d
where  d.nombre_depto  like "%Ventas%" 		  or
	   d.nombre_depto  like "%Investigación%" or 
       d.nombre_depto  like "%Mantenimiento%";

-- 19. Ahora obtener los nombres de los departamentos que no sean “Ventas” ni “Investigación” ni ‘Mantenimiento.
select DISTINCT (d.nombre_depto)
from personal.departamentos as d
where  d.nombre_depto not like "%Ventas%" 		 and
	   d.nombre_depto not like "%Investigación%" and 
       d.nombre_depto not like "%Mantenimiento%";
       
-- 20. Mostrar el salario más alto de la empresa.
select e.nombre, e.sal_emp
from personal.empleados as e
where e.sal_emp = 
	(select max(ee.sal_emp)
    from personal.empleados as ee
    );

-- 21. Mostrar el nombre del último empleado de la lista por orden alfabético.
select  DISTINCT (FIRST_VALUE (e.nombre) over ( order by e.nombre desc) )
from personal.empleados as e;

-- 22. Hallar el salario más alto, el más bajo y la diferencia entre ellos.
select max(e.sal_emp) as Salarario_Alto, min(e.sal_emp) as Salario_Bajo, (max(e.sal_emp)  - min(e.sal_emp) )  as Diferencia
from personal.empleados as e;

-- 23. Hallar el salario promedio por departamento. 
select AVG(e.sal_emp) as Salario_Promedio, e.id_depto
from personal.empleados as e 
group by e.id_depto;

-- Consultas con Having
-- 24. Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados de esos departamentos.
select count(*) as Cantidad_Personal, e.id_depto
from personal.empleados as e
group by e.id_depto
having count(*) > 3;

-- 25. Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. Solo los que tengan más de dos empleados (2 incluido).
select e.cod_jefe, count(*) as Cantiadad_Subordinados
from personal.empleados as e
group by e.cod_jefe
HAVING count(*)>=2;

-- 26. Hallar los departamentos que no tienen empleados 
select d.id_depto
from personal.departamentos as d
where d.id_depto not in (
						select e.id_depto
						from personal.empleados as e);

-- Consulta con Subconsulta
-- 27. Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la empresa. Ordenarlo por departamento.
select e.nombre, e.sal_emp, (select avg (eee.sal_emp) from personal.empleados as eee) as Salario_Promedio, e.id_depto
from personal.empleados as e
where e.sal_emp >= (
					select avg (ee.sal_emp)
                    from personal.empleados as ee)
order by e.id_depto asc;
