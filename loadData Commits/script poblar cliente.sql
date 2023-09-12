
CREATE TABLE IF NOT EXISTS public.cliente(
    idCliente SERIAL PRIMARY KEY,
    nombreCliente TEXT COLLATE pg_catalog."default",
    apellidoCliente TEXT COLLATE pg_catalog."default",
    idComuna INTEGER);

insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Víctor', 'Flores', 1);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Cintia', 'Romero', 2);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Sergio', 'Alvarez', 3);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Claudia', 'Sanchez', 4);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Julio', 'Gonzalez', 5);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Horacio', 'Gimenez', 6);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Susana', 'Fernandez', 7);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Julio', 'Gutierrez', 8);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Liliana', 'Rodriguez', 9);
insert into cliente (nombre_cliente, apellido_cliente, id_comuna) values ('Juan', 'Benitez', 10);
