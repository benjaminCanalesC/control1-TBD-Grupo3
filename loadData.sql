insert into comuna (nombre_comuna) values ('Santiago');
insert into comuna (nombre_comuna) values ('Renca');
insert into comuna (nombre_comuna) values ('Las Condes');
insert into comuna (nombre_comuna) values ('Maipú');
insert into comuna (nombre_comuna) values ('La Florida');
insert into comuna (nombre_comuna) values ('Tocopilla');
insert into comuna (nombre_comuna) values ('Copiapó');
insert into comuna (nombre_comuna) values ('Valparaíso');
insert into comuna (nombre_comuna) values ('Quintero');
insert into comuna (nombre_comuna) values ('Rancagua');

insert into sueldo (monto) values (230000);
insert into sueldo (monto) values (145000);
insert into sueldo (monto) values (455000);
insert into sueldo (monto) values (200000);
insert into sueldo (monto) values (150000);
insert into sueldo (monto) values (200000);
insert into sueldo (monto) values (135000);
insert into sueldo (monto) values (230000);
insert into sueldo (monto) values (500000);
insert into sueldo (monto) values (230000);
insert into sueldo (monto) values (380000);
insert into sueldo (monto) values (420000);

insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Víctor', 'Flores', 1);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Cintia', 'Romero', 1);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Sergio', 'Alvarez', 3);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Claudia', 'Sanchez', 4);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Julio', 'Gonzalez', 5);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Horacio', 'Gimenez', 5);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Susana', 'Fernandez', 7);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Julio', 'Gutierrez', 5);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Liliana', 'Rodriguez', 9);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Juan', 'Benitez', 10);

insert into horario (fecha, hora) values ('2023-01-25', '12:32');
insert into horario (fecha, hora) values ('2023-05-06', '12:20');
insert into horario (fecha, hora) values ('2023-12-07', '07:34');
insert into horario (fecha, hora) values ('2023-11-10', '22:23');
insert into horario (fecha, hora) values ('2023-04-12', '12:43');
insert into horario (fecha, hora) values ('2023-05-28', '09:26');
insert into horario (fecha, hora) values ('2023-03-12', '10:43');
insert into horario (fecha, hora) values ('2023-12-25', '14:12');
insert into horario (fecha, hora) values ('2023-01-04', '15:56');
insert into horario (fecha, hora) values ('2023-07-22', '18:13');
insert into horario (fecha, hora) values ('2023-06-02', '19:32');
insert into horario (fecha, hora) values ('2023-02-01', '10:23');

INSERT INTO pago (monto_pago)
VALUES
    (35000),
    (20000),
    (13000),
    (30000),
    (15000);

INSERT INTO detalle (id_pago)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5);

INSERT INTO producto (nombre_producto, precio_producto)
VALUES
    ('Tinte pelo', 10000),
    ('Shampoo', 5000),
    ('Acondicionador', 5000),
    ('Crema para afeitar', 3000);

INSERT INTO servicio (tipo_servicio, precio_servicio)
VALUES
    ('Colorear pelo', 20000),
    ('Cortar pelo', 10000),
    ('Cortar barba', 10000),
    ('Lavado de pelo', 5000),
    ('Rizado de pelo', 5000),
    ('Peinar', 5000);

INSERT INTO producto_detalle (id_producto, id_detalle)
VALUES 
 (2,1),
 (3,1),
 (2,2),
 (3,2),
 (4,3),
 (1,4);


INSERT INTO servicio_detalle (id_servicio, id_detalle)
VALUES
 (2,1),
 (4,1),
 (6,1),
 (4,2),
 (6,2),
 (3,3),
 (1,4),
 (2,5),
 (6,5);

insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Eduardo Perez', 'Barbero', 1, 5);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Esteban García', 'Peluquero', 6, 2);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Brenda Campos', 'Peluquero', 1, 3);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Jordán Sanchez', 'Barbero', 2, 4);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Julio Muñoz', 'Estilista', 2, 5);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Mónica Fuentes', 'Peluquero', 3, 6);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Eva Mieres', 'Barbero', 3, 1);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Jorge Fernández', 'Barbero', 3, 12);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Fabiola Santos', 'Estilista', 3, 1);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('José Matamala', 'Peluquero', 4, 7);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Victor Castro', 'Peluquero', 7, 8);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Fabián Jara', 'Barbero', 4, 9);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Marcela Jara', 'Estilista', 4, 10);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Andrea Sanchez', 'Peluquero', 4, 4);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Antonia Bravo', 'Barbero', 5, 11);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Macarena Díaz', 'Peluquero', 9, 4);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Jazmín Torres', 'Peluquero', 10, 3);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Alberto Puentes', 'Peluquero', 5, 12);
insert into empleado (nombre_empleado, rol_empleado, id_comuna, id_sueldo) values ('Adriel Paredes', 'Peluquero', 8, 12);

insert into peluqueria (nombre_peluqueria, id_comuna) values ('Doña pelos', 1);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('La tendencia', 1);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Tijeras de oro', 2);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Peluquería Rapunzel', 2);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Hair Style', 3);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Gold Hair Salon', 3);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Estilazo', 4);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Coletas Mágicas', 4);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Peluquería Aurora', 5);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Dulce estética', 5);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Red', 6);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Blanco y negro', 6);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Rizos de oro', 7);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Caminos trenzados', 7);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Plus', 8);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Peluquería Milagros', 8);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Leyenda', 9);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('TOP1', 9);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Peluquería el Paraíso', 10);
insert into peluqueria (nombre_peluqueria, id_comuna) values ('Cabellos auténticos', 10);

insert into empleado_peluqueria (id_peluqueria, id_empleado) values (1,1);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (1,3);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (2,1);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (2,3);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (3,4);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (3,5);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (4,4);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (4,5);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (5,6);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (5,7);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (5,9);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (6,6);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (6,8);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (6,9);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (7,10);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (7,13);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (8,12);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (8,14);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (9,15);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (9,18);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (10,15);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (11,2);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (12,2);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (13,11);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (14,11);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (15,19);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (16,19);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (17,16);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (18,16);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (19,17);
insert into empleado_peluqueria (id_peluqueria, id_empleado) values (20,17);

insert into cliente_peluqueria (id_cliente, id_peluqueria) values (1,1);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (2,1);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (2,2);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (3,5);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (3,6);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (4,7);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (4,8);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (5,9);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (5,10);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (6,10);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (7,13);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (8,9);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (8,10);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (9,17);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (9,18);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (10,19);
insert into cliente_peluqueria (id_cliente, id_peluqueria) values (10,20);

insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (1, 1, 1, 1, 2, '15 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (1, 2, 3, 2, 1, '25 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (2, 3, 1, 3, 2, '20 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (2, 4, 3, 4, 2,'10 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (3, 5, 4, 5, 3, '15 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (3, 6, 5, 1, 3, '25 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (4, 7, 4, 2, 4, '20 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (4, 8, 5, 3, 4, '10 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (5, 9, 6, 4, 6, '30 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (5, 10, 7, 5, 3, '20 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (5, 11, 9, 1, 2, '10 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (6, 12, 6, 2, 1, '15 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (6, 1, 8, 3, 5, '25 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (6, 2, 9, 4, 7, '10 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (7, 3, 10, 5, 9, '8 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (7, 4, 13, 1,10, '10 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (8, 5, 12, 2, 1, '15 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (8, 6, 14, 3, 3, '18 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (9, 7, 15, 4, 8, '20 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (9, 8, 18, 5, 2, '25 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (10, 9, 15, 1, 1, '20 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (11, 10, 2, 2, 6, '10 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (12, 11, 2, 3, 3, '15 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (13, 12, 11, 4, 9, '8 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (14, 1, 11, 5, 9, '10 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (15, 2, 19, 1, 4, '15 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (16, 3, 19, 2, 6, '20 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (17, 4, 16, 3, 8, '13 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (18, 5, 16, 4, 1, '15 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (19, 6, 17, 5, 10, '10 minutos');
insert into cita (id_peluqueria, id_horario, id_empleado, id_detalle, id_cliente, duracion) values (20, 7, 17, 1, 1, '20 minutos');