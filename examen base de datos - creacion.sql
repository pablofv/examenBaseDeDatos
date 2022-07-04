-- Examen Base de datos
-- DROP DATABASE if EXISTS transportista;
-- CREATE DATABASE transportista;
use transportista;

DROP TABLE if EXISTS detalleDePaquetes;
DROP TABLE if EXISTS paquete;
DROP TABLE if EXISTS ciudades;
DROP TABLE if EXISTS camioneros;
DROP TABLE if EXISTS camiones;

create table camioneros(
	id_camioneros int auto_increment primary key,
    nombre varchar(100) not null,
    direccion varchar(40) not null,
    telefono char(20),
    sueldo int
);

create table camiones(
	matriculas int auto_increment primary key,
    marca varchar(100) not null,
    modelo varchar(40) not null,
    potencia char(10),
    tipo char(20)
);

create table detalleDePaquetes(
	id_detalleDePaquetes int auto_increment primary key,
    id_camioneros int not null,
    matricula int not null
);
alter table detalleDePaquetes
add constraint foreign key cf_detalle_camioneros(id_camioneros) references camioneros(id_camioneros);

alter table detalleDePaquetes
add constraint foreign key cf_detalle_camiones(matricula) references camiones(matriculas);

create table ciudades(
	id_ciudades int auto_increment primary key,
    nombre varchar(100) not null
);

create table paquete(
	id_paquete int auto_increment primary key,
    descripcion varchar(100) not null,
    destinatario varchar(40) not null,
    direccion char(30),
    id_camioneros int not null,
    id_ciudades int not null
);

alter table paquete
add constraint foreign key cf_paquete_camioneros(id_camioneros) references camioneros(id_camioneros);
alter table paquete
add constraint foreign key cf_paquete_ciudades(id_ciudades) references ciudades(id_ciudades);
