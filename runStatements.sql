-- consultas control 1
-- query 1

-- Elimina las vistas si existen
DROP VIEW IF EXISTS ComunaMinCitas, HorarioCitasCount;

-- Vista para contar el número de citas por comuna, peluquería y hora
CREATE VIEW HorarioCitasCount AS
SELECT cm.nombre_comuna AS comuna, p.nombre_peluqueria AS peluqueria, DATE_TRUNC('hour', h.hora) AS horario, COUNT(c.id_cita) AS num_citas
FROM cita c
INNER JOIN horario h ON c.id_horario = h.id_horario
INNER JOIN peluqueria p ON c.id_peluqueria = p.id_peluqueria
INNER JOIN comuna cm ON p.id_comuna = cm.id_comuna
GROUP BY cm.nombre_comuna, p.nombre_peluqueria, DATE_TRUNC('hour', h.hora);

-- Vista para encontrar el número mínimo de citas por comuna y peluquería
CREATE VIEW ComunaMinCitas AS
SELECT comuna, peluqueria, MIN(num_citas) AS min_citas
FROM HorarioCitasCount
GROUP BY comuna, peluqueria;

-- Consulta final
SELECT hc.comuna, hc.peluqueria, MIN(hc.horario) AS horario
FROM HorarioCitasCount hc
INNER JOIN ComunaMinCitas cmc ON hc.comuna = cmc.comuna AND hc.peluqueria = cmc.peluqueria AND hc.num_citas = cmc.min_citas
GROUP BY hc.comuna, hc.peluqueria;


-- query 5
select cli.nombre_cliente, co.nombre_comuna as comuna_cliente, pe.nombre_peluqueria, pa.monto_pago
from servicio as s, servicio_detalle as sd, cita as ci, cliente as cli, comuna as co, pago as pa, peluqueria as pe, detalle as d
where s.tipo_servicio = 'Colorear pelo' AND s.id_servicio = sd.id_servicio
AND ci.id_detalle = sd.id_detalle AND cli.id_cliente = ci.id_cliente AND cli.id_comuna = co.id_comuna
AND pe.id_peluqueria = ci.id_peluqueria AND sd.id_detalle = d.id_detalle AND pa.id_pago = d.id_pago

-- query 7
-- Elimina las vistas si existen
DROP VIEW IF EXISTS ClienteDuracionMaxima, DuracionMaximaPorPeluqueria;

-- Vista para encontrar la duración máxima de cada cliente por mes y peluquería
CREATE VIEW ClienteDuracionMaxima AS
SELECT DATE_TRUNC('month', h.fecha) AS fecha_mes, p.nombre_peluqueria, cl.nombre_cliente, MAX(c.duracion) AS duracion_maxima
FROM cita c
INNER JOIN horario h ON c.id_horario = h.id_horario
INNER JOIN peluqueria p ON c.id_peluqueria = p.id_peluqueria
INNER JOIN cliente cl ON c.id_cliente = cl.id_cliente
GROUP BY DATE_TRUNC('month', h.fecha), p.nombre_peluqueria, cl.nombre_cliente;

-- Vista para encontrar la duración máxima de cada peluquería por mes
CREATE VIEW DuracionMaximaPorPeluqueria AS
SELECT DATE_TRUNC('month', h.fecha) AS fecha_mes, p.nombre_peluqueria, MAX(c.duracion) AS max_duracion
FROM cita c
INNER JOIN horario h ON c.id_horario = h.id_horario
INNER JOIN peluqueria p ON c.id_peluqueria = p.id_peluqueria
GROUP BY DATE_TRUNC('month', h.fecha), p.nombre_peluqueria;

-- Consulta final
SELECT DATE_PART('year', CDM.fecha_mes) AS año, DATE_PART('month', CDM.fecha_mes) AS mes, CDM.nombre_peluqueria, CDM.nombre_cliente
FROM ClienteDuracionMaxima CDM
INNER JOIN DuracionMaximaPorPeluqueria DMP ON CDM.fecha_mes = DMP.fecha_mes AND CDM.nombre_peluqueria = DMP.nombre_peluqueria AND CDM.duracion_maxima = DMP.max_duracion
ORDER BY año, mes;


-- query 9
with totalcitas as (
	select 
		extract(month from h.fecha) as mes, 
		count(c.id_cita) as cantidadCitas, 
		e.nombre_empleado as nombre, 
		RANK() OVER (PARTITION BY EXTRACT(MONTH FROM h.fecha) ORDER BY COUNT(c.id_cita) DESC) AS ranking
	from cita as c
	inner join horario as h on h.id_horario = c.id_horario
	inner join empleado as e on e.id_empleado = c.id_empleado
	where extract(year from h.fecha) = '2021'
	group by h.fecha, e.nombre_empleado
)
select mes, nombre
from totalcitas
where ranking = 1
group by mes, nombre

-- query 10

select c.nombre_comuna, count(distinct p.id_peluqueria) as cant_Peluquerias, count(distinct cl.id_cliente) as cant_Clientes
from comuna as c, peluqueria as p
left join cliente_peluqueria as cp on cp.id_peluqueria = p.id_peluqueria
left join  cliente as cl on cp.id_cliente = cl.id_cliente 
where c.id_comuna = p.id_comuna 
group by c.nombre_comuna
