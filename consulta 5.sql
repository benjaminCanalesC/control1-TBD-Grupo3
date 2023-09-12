
select cli.nombre_cliente, co.nombre_comuna as comuna_cliente, pe.nombre_peluqueria, pa.monto_pago
from servicio as s, servicio_detalle as sd, cita as ci, cliente as cli, comuna as co, pago as pa, peluqueria as pe, detalle as d
where s.tipo_servicio = 'Colorear pelo' AND s.id_servicio = sd.id_servicio
AND ci.id_detalle = sd.id_detalle AND cli.id_cliente = ci.id_cliente AND cli.id_comuna = co.id_comuna
AND pe.id_peluqueria = ci.id_peluqueria AND sd.id_detalle = d.id_detalle AND pa.id_pago = d.id_pago