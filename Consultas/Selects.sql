-- Consultas Utilizando los join

SELECT p.nombre, p.apellido, dp.Valor, dp.Fecha
FROM persona p
JOIN detalle_inmueble_pago dp ON p.id = dp.id_persona
WHERE dp.Fecha BETWEEN '2024-01-01' AND '2024-12-31';

SELECT p.nombre AS persona_nombre, p.apellido AS persona_apellido, dip.valor AS valor_pago, dip.fecha AS fecha_pago, dip.estado AS estado_pago 
FROM persona p 
JOIN detalle_inmueble_pago dip ON p.id = dip.id_persona 
WHERE dip.valor > 500000;

SELECT p.nombre AS persona_nombre, p.apellido AS persona_apellido, dip.valor AS valor_pago, dip.fecha AS fecha_pago 
FROM persona p 
JOIN detalle_inmueble_pago dip ON p.id = dip.id_persona 
WHERE dip.estado = 'ACREDITADO';

SELECT m.nombre AS municipio_nombre, d.nombre AS departamento_nombre
FROM municipio m 
JOIN departamento d ON m.id_departamento = d.id
WHERE d.nombre = 'Cundinamarca';

SELECT i.Nomenclatura, i.m2, di.Estado
FROM inmueble i
JOIN detalle_inmueble di ON i.id = di.id_inmueble
WHERE di.Estado = 'ACTIVO';

SELECT m.Nombre AS Municipio, d.Nombre AS Departamento
FROM municipio m
JOIN departamento d ON m.id_departamento = d.id
WHERE d.Nombre LIKE '%a%';

SELECT p.nombre, p.apellido, m.Nombre AS Municipio
FROM persona p
JOIN municipio m ON p.id_municipio = m.id
WHERE p.genero = 'F';

SELECT u.Login, r.Nombre AS Rol
FROM usuario u
JOIN rol r ON u.id_rol = r.id
WHERE r.Nombre = 'Administrador';

SELECT cp.titulo AS causa_pago, SUM(dip.valor) AS total_valor
FROM causa_pago cp 
JOIN detalle_inmueble_pago dip ON cp.id = dip.id_causa_pago 
WHERE dip.valor > 100000;

SELECT dip.valor, dip.fecha, cp.titulo AS causa_pago, dip.estado
FROM detalle_inmueble_pago dip
JOIN causa_pago cp ON dip.id_causa_pago = cp.id
WHERE dip.estado = 'REGISTRADO' AND cp.titulo = 'Pago Mensual';

SELECT p.nombre, p.apellido, i.Nomenclatura, dip.tipo_relacion
FROM detalle_inmueble_persona dip
JOIN persona p ON dip.id_persona = p.id
JOIN detalle_inmueble di ON dip.id_detalle_inmueble = di.id
JOIN inmueble i ON di.id_inmueble = i.id
WHERE dip.tipo_relacion = 'PROPIETARIO';

SELECT dp.Valor, dp.Fecha, dp.Soporte
FROM detalle_inmueble_pago dp
WHERE dp.Soporte IS NOT NULL;

SELECT p.nombre, p.apellido, r.nombre AS rol
FROM persona p
JOIN usuario u ON p.id = u.id_persona
JOIN rol r ON u.id_rol = r.id
WHERE r.nombre <> 'Administrador';

SELECT cp.titulo AS Causa, cp.fecha_inicio, cp.fecha_fin, cp.Valor
FROM causa_pago cp
JOIN tipo_causa_pago tcp ON cp.id_tipo_causa_pago = tcp.id
WHERE cp.fecha_inicio >= '2024-01-01';

SELECT p.nombre, p.apellido, m.Nombre AS Municipio
FROM persona p
JOIN municipio m ON p.id_municipio = m.id
WHERE m.Nombre = 'Medellín';