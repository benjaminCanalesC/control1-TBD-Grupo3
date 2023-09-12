-- TABLA PAGO
CREATE TABLE IF NOT EXISTS pago (
    id_pago SERIAL PRIMARY KEY,
    monto_pago INT
);

INSERT INTO pago (monto_pago)
VALUES
    (35000),
    (20000),
    (13000);
	
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
    ('Tinte pelo', 10000),
    ('Shampoo', 5000),
    ('Acondicionador', 5000),
    ('Crema para afeitar', 3000);
	
-- TABLA SERVICIO
CREATE TABLE IF NOT EXISTS servicio (
    id_servicio SERIAL PRIMARY KEY,
    id_detalle INT,
    tipo_servicio VARCHAR(255),
    precio_servicio INT
);

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
 (4,3);

INSERT INTO servicio_detalle (id_servicio, id_detalle)
VALUES
 (2,1),
 (4,1),
 (6,1),
 (4,2),
 (6,2),
 (3,3);
