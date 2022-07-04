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