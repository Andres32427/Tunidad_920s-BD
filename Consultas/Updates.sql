-- Consulta de la Tabla ´Persona´

UPDATE persona
SET nombre = 'Alveiro'
WHERE id = 1;

UPDATE persona
SET apellido = 'Tejeiro'
WHERE genero = 'F';

UPDATE persona
SET Fecha_Nacimiento = '2004-02-28'
WHERE id = 2;

UPDATE persona
SET genero = 'O'
WHERE id = 6;

UPDATE persona 
SET Direccion = 'Calle 10 # 8C - 29'
WHERE id = 10;


-- Consulta de la Tabla ´Inmueble´

UPDATE inmueble
SET m2 = '350'
WHERE id_tipo_inmueble = 1;

UPDATE inmueble 
SET Nomenclatura = 'C5' 
WHERE id = 2;

UPDATE inmueble
SET id_tipo_inmueble = 3
WHERE id = 2;

UPDATE inmueble
SET m2 = '50'
WHERE id_tipo_inmueble = 2;

UPDATE inmueble
SET m2 = '70'
WHERE id = 3;


-- Consulta de la Tabla ´Usuario´

UPDATE usuario 
SET Login = 'paulita@hotmail.com' 
WHERE id = 9;

UPDATE usuario
SET `Password` = 'Tunidad_920s'
WHERE id_rol = 1;

UPDATE usuario
SET id_rol = 2
WHERE id = 1;

UPDATE usuario
SET id_persona = 8
WHERE id = 5;

UPDATE usuario
SET id_rol = 4
WHERE id_persona < 5;