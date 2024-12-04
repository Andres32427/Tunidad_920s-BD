-- Consulta de la Tabla ´Persona´

DELETE FROM persona 
WHERE id = 1;

DELETE FROM persona
WHERE Fecha_Nacimiento < '2000-10-03';

DELETE FROM persona 
WHERE genero = 'M';

DELETE FROM persona
WHERE Tipo_identificacion = 'CC';

DELETE FROM persona
WHERE Apellido LIKE 'A%';


-- Consulta de la Tabla ´Usuario´

DELETE FROM usuario
WHERE id = 1;

DELETE FROM usuario 
WHERE id_rol = 2;

DELETE FROM usuario 
WHERE Login LIKE 'a%';

DELETE FROM usuario 
WHERE id_persona = 10;

DELETE FROM usuario 
WHERE id <8;


-- Consulta de la Tabla ´Inmueble´

DELETE FROM inmueble
WHERE id = 1; 

DELETE FROM inmueble
WHERE m2 < 50;

DELETE FROM inmueble 
WHERE id_tipo_inmueble = 2;

DELETE FROM inmueble 
WHERE m2 > 100;

DELETE FROM inmueble
WHERE m2 = 200;
