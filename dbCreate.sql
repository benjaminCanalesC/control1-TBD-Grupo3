-- CREAR TABLAS DE BASE DE DATOS GRUPO 3.

BEGIN;

-- Creación de las tablas

CREATE TABLE IF NOT EXISTS public.cliente(
    id_cliente SERIAL PRIMARY KEY,
    nombre_cliente TEXT COLLATE pg_catalog."default",
    apellido_cliente TEXT COLLATE pg_catalog."default",
    id_comuna INTEGER,
    genero TEXT COLLATE pg_catalog."default");

CREATE TABLE IF NOT EXISTS public.comuna(
    id_comuna SERIAL PRIMARY KEY,
    nombre_comuna TEXT COLLATE pg_catalog."default");

CREATE TABLE IF NOT EXISTS public.empleado(
    id_empleado SERIAL PRIMARY KEY,
    nombre_empleado TEXT COLLATE pg_catalog."default",
    rol_empleado TEXT COLLATE pg_catalog."default",
    id_comuna INTEGER,
    id_sueldo INTEGER);

CREATE TABLE IF NOT EXISTS public.sueldo(
    id_sueldo SERIAL PRIMARY KEY,
    monto INTEGER);

CREATE TABLE IF NOT EXISTS public.cliente_peluqueria(
    id_cliente_peluqueria SERIAL PRIMARY KEY,
    id_cliente INTEGER,
    id_peluqueria INTEGER);

CREATE TABLE IF NOT EXISTS public.peluqueria(
    id_peluqueria SERIAL PRIMARY KEY,
    nombre_peluqueria TEXT COLLATE pg_catalog."default",
    id_comuna INTEGER);

CREATE TABLE IF NOT EXISTS public.empleado_peluqueria(
    id_empleado_peluqueria SERIAL PRIMARY KEY,
    id_peluqueria INTEGER,
    id_empleado INTEGER);

CREATE TABLE IF NOT EXISTS public.horario(
    id_horario SERIAL PRIMARY KEY,
    fecha DATE,
    hora TIME);

CREATE TABLE IF NOT EXISTS public.cita(
    id_cita SERIAL PRIMARY KEY,
    id_peluqueria INTEGER,
    id_horario INTEGER,
    id_empleado INTEGER,
    id_detalle INTEGER,
	id_cliente INTEGER,
    duracion TEXT COLLATE pg_catalog."default");

CREATE TABLE IF NOT EXISTS public.producto(
    id_producto SERIAL PRIMARY KEY,
    nombre_producto TEXT COLLATE pg_catalog."default",
    precio_producto INTEGER);

CREATE TABLE IF NOT EXISTS public.detalle(
    id_detalle SERIAL PRIMARY KEY,
    id_pago INTEGER);

CREATE TABLE IF NOT EXISTS public.servicio(
    id_servicio SERIAL PRIMARY KEY,
    tipo_servicio TEXT COLLATE pg_catalog."default",
    precio_servicio INTEGER);

CREATE TABLE IF NOT EXISTS public.pago(
    id_pago SERIAL PRIMARY KEY,
    monto_pago INTEGER);

CREATE TABLE IF NOT EXISTS public.producto_detalle(
    id_producto_detalle SERIAL PRIMARY KEY,
    id_producto INTEGER,
    id_detalle INTEGER);

CREATE TABLE IF NOT EXISTS public.servicio_detalle(
    id_servicio_detalle SERIAL PRIMARY KEY,
    id_servicio INTEGER,
    id_detalle INTEGER);

-- Creación de las relaciones

ALTER TABLE IF EXISTS public.cliente
    ADD CONSTRAINT "idComunaFK" FOREIGN KEY (id_comuna)
    REFERENCES public.comuna (id_comuna) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.empleado
    ADD CONSTRAINT "idComunaFK" FOREIGN KEY (id_comuna)
    REFERENCES public.comuna (id_comuna) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.empleado
    ADD CONSTRAINT "idSueldoFK" FOREIGN KEY (id_sueldo)
    REFERENCES public.sueldo (id_sueldo) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cliente_peluqueria
    ADD CONSTRAINT "idClienteFK" FOREIGN KEY (id_cLiente)
    REFERENCES public.cliente (id_cliente) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cliente_peluqueria
    ADD CONSTRAINT "idPeluqueriaFK" FOREIGN KEY (id_peluqueria)
    REFERENCES public.Peluqueria (id_peluqueria) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.peluqueria
    ADD CONSTRAINT "idComuna" FOREIGN KEY (id_comuna)
    REFERENCES public.comuna (id_comuna) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.empleado_peluqueria
    ADD CONSTRAINT "idPeluqueriaFK" FOREIGN KEY (id_peluqueria)
    REFERENCES public.peluqueria (id_peluqueria) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.empleado_peluqueria
    ADD CONSTRAINT "idEmpleadoFK" FOREIGN KEY (id_empleado)
    REFERENCES public.empleado (id_empleado) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cita
    ADD CONSTRAINT "idPeluqueriaFK" FOREIGN KEY (id_peluqueria)
    REFERENCES public.peluqueria (id_peluqueria) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cita
    ADD CONSTRAINT "idDetalleFK" FOREIGN KEY (id_detalle)
    REFERENCES public.detalle (id_detalle) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cita
    ADD CONSTRAINT "idHorarioFK" FOREIGN KEY (id_horario)
    REFERENCES public.horario (id_horario) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.cita
    ADD CONSTRAINT "idEmpleadoFK" FOREIGN KEY (id_empleado)
    REFERENCES public.empleado (id_empleado) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	

ALTER TABLE IF EXISTS public.cita
    ADD CONSTRAINT "idClienteFK" FOREIGN KEY (id_cLiente)
    REFERENCES public.cliente (id_cliente) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.detalle
    ADD CONSTRAINT "idPagoFK" FOREIGN KEY (id_pago)
    REFERENCES public.pago (id_pago) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.producto_detalle
    ADD CONSTRAINT "idProductoFK" FOREIGN KEY (id_producto)
    REFERENCES public.producto (id_producto) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.producto_detalle
    ADD CONSTRAINT "idDetalleFK" FOREIGN KEY (id_detalle)
    REFERENCES public.detalle (id_detalle) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.servicio_detalle
    ADD CONSTRAINT "idDetalleFK" FOREIGN KEY (id_detalle)
    REFERENCES public.detalle (id_detalle) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.servicio_detalle
    ADD CONSTRAINT "idServicioFK" FOREIGN KEY (id_servicio)
    REFERENCES public.servicio (id_servicio) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

COMMIT;
