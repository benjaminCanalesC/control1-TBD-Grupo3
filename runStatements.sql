-- consultas control 1

-- query 5
select cli.nombre_cliente, co.nombre_comuna as comuna_cliente, pe.nombre_peluqueria, pa.monto_pago
from servicio as s, servicio_detalle as sd, cita as ci, cliente as cli, comuna as co, pago as pa, peluqueria as pe, detalle as d
where s.tipo_servicio = 'Colorear pelo' AND s.id_servicio = sd.id_servicio
AND ci.id_detalle = sd.id_detalle AND cli.id_cliente = ci.id_cliente AND cli.id_comuna = co.id_comuna
AND pe.id_peluqueria = ci.id_peluqueria AND sd.id_detalle = d.id_detalle AND pa.id_pago = d.id_pago

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
