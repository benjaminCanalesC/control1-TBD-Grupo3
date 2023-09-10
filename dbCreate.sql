-- CREAR TABLAS DE BASE DE DATOS GRUPO 3.

BEGIN;

-- Creación de las tablas

CREATE TABLE IF NOT EXISTS public.cliente(
    idCliente SERIAL PRIMARY KEY,
    nombreCliente TEXT COLLATE pg_catalog."default",
    apellidoCliente TEXT COLLATE pg_catalog."default",
    idComuna INTEGER);

CREATE TABLE IF NOT EXISTS public.comuna
(
    idComuna SERIAL PRIMARY KEY,
    nombreComuna TEXT COLLATE pg_catalog."default"
);

CREATE TABLE IF NOT EXISTS public.empleado
(
    idEmpleado SERIAL PRIMARY KEY,
    nombreEmpleado TEXT COLLATE pg_catalog."default",
    rolEmpleado TEXT COLLATE pg_catalog."default",
    idComuna INTEGER,
    idSueldo INTEGER
);

CREATE TABLE IF NOT EXISTS public.sueldo
(
    idSueldo SERIAL PRIMARY KEY,
    monto INTEGER
);

CREATE TABLE IF NOT EXISTS public.cliente_peluqueria
(
    idClientePeluqueria SERIAL PRIMARY KEY,
    idCliente INTEGER,
    idPeluqueria INTEGER
);

CREATE TABLE IF NOT EXISTS public.peluqueria
(
    idPeluqueria SERIAL PRIMARY KEY,
    nombrePeluqueria TEXT COLLATE pg_catalog."default",
    idComuna INTEGER
);

CREATE TABLE IF NOT EXISTS public.empleado_peluqueria
(
    idEmpleadoPeluqueria SERIAL PRIMARY KEY,
    idPeluqueria INTEGER,
    idEmpleado INTEGER
);

CREATE TABLE IF NOT EXISTS public.horario
(
    idHorario SERIAL PRIMARY KEY,
    fecha DATE,
    hora TIME
);

CREATE TABLE IF NOT EXISTS public.cita
(
    idCita SERIAL PRIMARY KEY,
    idPeluqueria INTEGER,
    idHorario INTEGER,
    idEmpleado INTEGER,
    duracion TEXT COLLATE pg_catalog."default"
);

CREATE TABLE IF NOT EXISTS public.producto
(
    idProducto SERIAL PRIMARY KEY,
    idDetalle INTEGER,
    nombreProducto TEXT COLLATE pg_catalog."default",
    precioProducto INTEGER
);

CREATE TABLE IF NOT EXISTS public.detalle
(
    idDetalle SERIAL PRIMARY KEY,
    idPago INTEGER
);

CREATE TABLE IF NOT EXISTS public.servicio
(
    idServicio SERIAL PRIMARY KEY,
    idDetalle INTEGER,
    tipoServicio TEXT COLLATE pg_catalog."default",
    precioServicio INTEGER
);

CREATE TABLE IF NOT EXISTS public.pago
(
    idPago SERIAL PRIMARY KEY,
    montoPago INTEGER
);

-- Creación de las relaciones

ALTER TABLE IF EXISTS public.cliente
    ADD CONSTRAINT "idComunaFK" FOREIGN KEY (idComuna)
    REFERENCES public.comuna (idComuna) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.empleado
    ADD CONSTRAINT "idComunaFK" FOREIGN KEY (idComuna)
    REFERENCES public.comuna (idComuna) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.empleado
    ADD CONSTRAINT "idSueldoFK" FOREIGN KEY (idSueldo)
    REFERENCES public.sueldo (idSueldo) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cliente_peluqueria
    ADD CONSTRAINT "idClienteFK" FOREIGN KEY (idCLiente)
    REFERENCES public.cliente (idCliente) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cliente_peluqueria
    ADD CONSTRAINT "idPeluqueriaFK" FOREIGN KEY (idPeluqueria)
    REFERENCES public.Peluqueria (idPeluqueria) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.peluqueria
    ADD CONSTRAINT "idComuna" FOREIGN KEY (idComuna)
    REFERENCES public.comuna (idComuna) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.empleado_peluqueria
    ADD CONSTRAINT "idPeluqueriaFK" FOREIGN KEY (idPeluqueria)
    REFERENCES public.peluqueria (idPeluqueria) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.empleado_peluqueria
    ADD CONSTRAINT "idEmpleadoFK" FOREIGN KEY (idEmpleado)
    REFERENCES public.empleado (idEmpleado) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cita
    ADD CONSTRAINT "idPeluqueriaFK" FOREIGN KEY (idPeluqueria)
    REFERENCES public.peluqueria (idPeluqueria) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cita
    ADD CONSTRAINT "idHorarioFK" FOREIGN KEY (idHorario)
    REFERENCES public.horario (idHorario) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cita
    ADD CONSTRAINT "idEmpleadoFK" FOREIGN KEY (idEmpleado)
    REFERENCES public.empleado (idEmpleado) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.producto
    ADD CONSTRAINT "idDetalleFK" FOREIGN KEY (idDetalle)
    REFERENCES public.detalle (idDetalle) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.detalle
    ADD CONSTRAINT "idPagoFK" FOREIGN KEY (idPago)
    REFERENCES public.pago (idPago) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.servicio
    ADD CONSTRAINT "idDetalleFK" FOREIGN KEY (idDetalle)
    REFERENCES public.detalle (idDetalle) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

COMMIT;