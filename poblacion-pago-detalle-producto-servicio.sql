-- TABLA PAGO
CREATE TABLE IF NOT EXISTS pago (
    id_pago SERIAL PRIMARY KEY,
    monto_pago INT
);

INSERT INTO pago (monto_pago)
VALUES
    (10000),
    (20000),
    (15000),
    (30000),
    (20000);
	
-- TABLA DETALLE
CREATE TABLE IF NOT EXISTS detalle (
    id_detalle SERIAL PRIMARY KEY,
    id_pago INT,
    FOREIGN KEY (id_pago) REFERENCES pago(id_pago)
);

INSERT INTO detalle (id_pago)
VALUES
    (1),
    (2),
    (1),
    (3);
	
-- TABLA PRODUCTO
CREATE TABLE IF NOT EXISTS producto (
    id_producto SERIAL PRIMARY KEY,
    id_detalle INT,
    nombre_producto VARCHAR(255),
    precio_producto INT
);

INSERT INTO producto (id_detalle, nombre_producto, precio_producto)
VALUES
    (1, 'Tinte pelo', 10000),
    (2, 'Shampoo', 5000),
    (1, 'Acondicionador', 5000),
    (3, 'Crema para afeitar', 3000);
	
-- TABLA SERVICIO
CREATE TABLE IF NOT EXISTS servicio (
    id_servicio SERIAL PRIMARY KEY,
    id_detalle INT,
    tipo_servicio VARCHAR(255),
    precio_servicio INT
);

INSERT INTO servicio (id_detalle, tipo_servicio, precio_servicio)
VALUES
    (1, 'Colorear pelo', 20000),
    (2, 'Cortar pelo', 10000),
    (1, 'Cortar barba', 10000),
    (2, 'Lavado de pelo', 5000),
    (2, 'Rizado de pelo', 5000),
    (2, 'Peinar', 5000);
