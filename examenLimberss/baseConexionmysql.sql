



create database bd_internet;
use bd_internet;

create table estudiantes (
id int  auto_increment  primary key,
nombres varchar(100),
apellidos varchar(100),
seminario varchar(100),
confirmado tinyint(1) NOT NULL CHECK(confirmado in (0,1)),
fecha date
);

drop table usuarios;


select * from estudiantes;
insert into estudiantes (nombres,apellidos,seminario,confirmado,fecha) values("Jhannet","Machicado Calle","seminario frontend",1,"2024-10-08");





