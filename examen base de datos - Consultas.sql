-- Punto 4- Agregar:
-- 3 registros en la tabla “Camiones” (usar en Marca: SCANIA, FIAT, IVECO),
insert into camiones(matriculas, marca, modelo, potencia, tipo)
              values(123, 'SCANIA', 'R470', '470cv', 'Media distancia');
insert into camiones(matriculas, marca, modelo, potencia, tipo)
              values(255, 'FIAT', '673 Salustro', '250cv', 'Media distancia');
insert into camiones(matriculas, marca, modelo, potencia, tipo)
              values(718, 'IVECO', 'Tector EVO EBS', '280cv', 'Larga distancia');

-- 3 registros en tabla “Camioneros” (DOMINGUEZ, MARTINEZ, ROBLEDO)
insert into camioneros(id_camioneros, nombre, direccion, telefono, sueldo)
				values(1, 'DOMINGUEZ', 'Piedra Buena 1432 Capital Federal', '1122334455', 120000);
insert into camioneros(id_camioneros, nombre, direccion, telefono, sueldo)
				values(2, 'MARTINEZ', 'Lavalleja 314 Martinez Bs.As.', '1123235858', 150000);
insert into camioneros(id_camioneros, nombre, direccion, telefono, sueldo)
				values(3, 'ROBLEDO', 'Morales 3567 San Martín Bs.As.', '1145679999', 135000);

-- 3 registros en la Tabla “Ciudades” (MENDOZA, MISIONES, SALTA).
insert into ciudades(id_ciudades, nombre)
			  values(1, 'MENDOZA');
insert into ciudades(id_ciudades, nombre)
			  values(2, 'MISIONES');
insert into ciudades(id_ciudades, nombre)
			  values(3, 'SALTA');

-- PUNTO 5- Registrar el envío de 2 paquetes a la ciudad de MISIONES con el camión de
-- Marca Fiat.
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(1, 'Envío 1', 'Juan', 'Italia 3220', 1, 2);
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(2, 'Envío 2', 'Alejandra', 'Rawson 5501', 1, 2);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(1, 1, 255);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(2, 1, 255);

-- Punto 6- Registrar el envío de 2 paquetes a la ciudad de MENDOZA con el camión de
-- Marca IVECO.
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(3, 'Envío 3', 'Susana', 'Cuenca 1258', 2, 1);
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(4, 'Envío 4', 'Marcela', 'Rawson 5501', 2, 1);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(3, 2, 718);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(4, 2, 718);

-- 7- Modificar la Matrícula del camión SCANIA por 8795.
-- SET SQL_SAFE_UPDATES = 0; para que permite actualizar la clave primaria.
update camiones
set matriculas = 8795
where marca = 'SCANIA';

-- 8- Calcular el monto de dinero que se paga en sueldos a todos los camioneros.
select sum(sueldo) total_sueldos from camioneros;

insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(5, 'Envío 5', 'Karina', 'Lavalle 3220', 2, 3);
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(6, 'Envío 6', 'Marcos', 'Viamonte 1540', 2, 1);
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(7, 'Envío 7', 'Orlando', 'Libertad 1320', 1, 1);
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(8, 'Envío 8', 'Candela', 'Aristóbulo del Valle 7523', 3, 3);
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(9, 'Envío 9', 'Martín', 'Edison 4470', 2, 1);
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(10, 'Envío 10', 'Juan', 'Av. Marquez 88', 3, 1);
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(11, 'Envío 11', 'Ramón', 'Uruguay 390', 1, 3);
insert into paquete(id_paquete, descripcion, destinatario, direccion, id_camioneros, id_ciudades)
		     values(12, 'Envío 12', 'Brisa', 'Misiones 645', 1, 2);

insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(5, 2, 255);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(6, 2, 718);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(7, 3, 8795);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(8, 1, 255);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(9, 3, 8795);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(10, 1, 718);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(11, 2, 255);
insert into detalledepaquetes(id_detalleDePaquetes, id_camioneros, matricula)
					   values(12, 3, 8795);

-- 9- Listar por orden alfabético en forma ascendente, la cantidad de paquetes que
-- transporta cada Camionero a la ciudad de SALTA.
select c.nombre, count(*) "cantidad paquetes"
from paquete p join camioneros c on p.id_camioneros = c.id_camioneros
			   join ciudades ci on p.id_ciudades = ci.id_ciudades
where ci.id_ciudades = 3 -- Salta -> 3
group by c.nombre
order by c.nombre asc;

-- 10- Eliminar el registro del segundo paquete enviado a MENDOZA en el punto 6.
delete from paquete where id_paquete = 4;
delete from detalledepaquetes where id_detalleDePaquetes = 4;
