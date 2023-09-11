
CREATE TABLE IF NOT EXISTS public.cliente(
    idCliente SERIAL PRIMARY KEY,
    nombreCliente TEXT COLLATE pg_catalog."default",
    apellidoCliente TEXT COLLATE pg_catalog."default",
    idComuna INTEGER);

insert into cliente (idCliente, nombreCliente, apellidoCliente, idComuna) values (1, 'Víctor', 'Flores', 1);
insert into cliente (idCliente, nombreCliente, apellidoCliente, idComuna) values (2, 'Cintia', 'Romero', 2);
insert into cliente (idCliente, nombreCliente, apellidoCliente, idComuna) values (3, 'Sergio', 'Alvarez', 3);
insert into cliente (idCliente, nombreCliente, apellidoCliente, idComuna) values (4, 'Claudia', 'Sanchez', 4);
insert into cliente (idCliente, nombreCliente, apellidoCliente, idComuna) values (5, 'Julio', 'Gonzalez', 5);
insert into cliente (idCliente, nombreCliente, apellidoCliente, idComuna) values (6, 'Horacio', 'Gimenez', 6);
insert into cliente (idCliente, nombreCliente, apellidoCliente, idComuna) values (7, 'Susana', 'Fernandez', 7);
insert into cliente (idCliente, nombreCliente, apellidoCliente, idComuna) values (8, 'Julio', 'Gutierrez', 8);
insert into cliente (idCliente, nombreCliente, apellidoCliente, idComuna) values (9, 'Liliana', 'Rodriguez', 9);
insert into cliente (idCliente, nombreCliente, apellidoCliente, idComuna) values (10, 'Juan', 'Benitez', 10);