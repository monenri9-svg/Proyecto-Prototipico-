CREATE DATABASE pp_301_final

USE pp_301_final

CREATE TABLE datos_g (
    matricula INT PRIMARY KEY,
    edad INT,
    sexo VARCHAR(20),
    id_carreras VARCHAR(10),
    semestre INT,
    estado_civil VARCHAR(20),
    FOREIGN KEY (id_carreras) REFERENCES licenciaturas(id_carreras));

INSERT INTO datos_g (
    matricula, 
    edad, 
    sexo, 
    id_carreras, 
    semestre, 
    estado_civil) 

VALUES 
(222086341, 23, 'Hombre', 'LP', 7, 'Soltero(a)'),
(221072505, 24, 'Mujer', 'LP', 7, 'Soltero(a)'),
(202410478, 28, 'Hombre', 'LCDN', 3, 'Soltero(a)'),
(212005432, 23, 'Mujer', 'LP', 7, 'Soltero(a)'),
(212078677, 34, 'Mujer', 'LCYF', 2, 'Soltero(a)'),
(251187971, 39, 'Hombre', 'LCYF', 2, 'Casado(a)'),
(252043502, 28, 'Mujer', 'LHNM', 1, 'Soltero(a)'),
(242010600, 19, 'Mujer', 'LCDN', 3, 'Soltero(a)'),
(242011497, 25, 'Hombre', 'LCDN', 3, 'Soltero(a)'),
(689087658, 20, 'Mujer', 'LCDN', 3, 'Soltero(a)'),
(242006644, 30, 'Mujer', 'LCDN', 2, 'Casado(a)'),
(242009240, 25, 'Mujer', 'LCDN', 3, 'Soltero(a)'),
(242009247, 25, 'Hombre', 'LCDN', 5, 'Soltero(a)'),
(116756900, 25, 'Hombre', 'LCDN', 3, 'Soltero(a)'),
(242010606, 19, 'Mujer', 'LCDN', 3, 'Soltero(a)'),
(242001424, 20, 'Hombre', 'LRI', 4, 'Soltero(a)'),
(242005345, 25, 'Mujer', 'LAE', 3, 'Soltero(a)'),
(242001298, 24, 'Hombre', 'LCDN', 6, 'Soltero(a)'),
(242003235, 18, 'Hombre', 'LP', 1, 'Soltero(a)'),
(240089037, 25, 'Hombre', 'LAE', 2, 'Soltero(a)'),
(242009443, 18, 'Mujer', 'LHNM', 1, 'Soltero(a)'),
(240112358, 28, 'Hombre', 'LRI', 1, 'Soltero(a)'),
(225678905, 27, 'Mujer', 'LP', 5, 'Casado(a)'),
(238765432, 22, 'Mujer', 'LDC', 3, 'Soltero(a)'),
(236000999, 18, 'Mujer', 'LDC', 1, 'Soltero(a)'),
(234567890, 22, 'Hombre', 'LCDN', 3, 'Soltero(a)'),
(242009876, 26, 'Hombre', 'LCYF', 4, 'Soltero(a)'),
(242009576, 23, 'Hombre', 'LMV', 2, 'Soltero(a)'),
(242006574, 27, 'Mujer', 'LP', 5, 'Soltero(a)'),
(242007563, 22, 'Mujer', 'LP', 1, 'Soltero(a)'),
(245670123, 24, 'Hombre', 'LCDN', 5, 'Soltero(a)'),
(239120000, 18, 'Mujer', 'LCYF', 3, 'Soltero(a)'),
(244556677, 19, 'Hombre', 'LCYF', 3, 'Soltero(a)'),
(223445566, 30, 'Mujer', 'LDC', 7, 'Casado(a)'),
(232109876, 23, 'Mujer', 'LAE', 4, 'Soltero(a)'),
(242008797, 29, 'Mujer', 'LMV', 4, 'Casado(a)'),
(224004748, 22, 'Hombre', 'LP', 2, 'Soltero(a)'),
(242005467, 23, 'Mujer', 'LCDN', 2, 'Soltero(a)'),
(242005632, 31, 'Hombre', 'LP', 5, 'Soltero(a)'),
(202478954, 25, 'Hombre', 'LCDN', 4, 'Soltero(a)');

CREATE TABLE secc_1 (
    id_s1 INT PRIMARY KEY,
    matricula INT,
    pensado_abandonar VARCHAR(5),
    razon_principal TEXT,
    frecuencia_clases TEXT,
    satisfaccion_educacion INT,
    profesores_motivan TEXT,
    FOREIGN KEY (matricula) REFERENCES datos_g(matricula));

INSERT INTO secc_1 (
    id_s1, 
    matricula, 
    pensado_abandonar, 
    razon_principal, 
    frecuencia_clases, 
    satisfaccion_educacion, 
    profesores_motivan) 

VALUES 
(1, 222086341, 'Sí', 'Falta de interés', 'Siempre', 4, 'Algo'),
(2, 221072505, 'No', 'Ninguna (en la anterior pregunta respondí no)', 'Siempre', 3, 'Algo'),
(3, 202410478, 'No', NULL, 'Casi siempre', 4, 'Algo'),
(4, 212005432, 'No', 'Problemas de salud mental', 'Siempre', 4, 'Sí, mucho'),
(5, 212078677, 'No', 'No estoy interesada en abandonar', 'Siempre', 5, 'Algo'),
(6, 251187971, 'Sí', 'Económica', 'Siempre', 4, 'Algo'),
(7, 252043502, 'No', 'Dificultad en las materias', 'Siempre', 3, 'Algo'),
(8, 242010600, 'Sí', 'Dificultad en las materias', 'Siempre', 3, 'Poco'),
(9, 242011497, 'No', 'Ninguno', 'Casi siempre', 4, 'Poco'),
(10, 689087658, 'Sí', 'Dificultad en las materias', 'Siempre', 4, 'Algo'),
(11, 242006644, 'Sí', 'Económica', 'Casi siempre', 3, 'Algo'),
(12, 242009240, 'Sí', 'Tiempo', 'Siempre', 5, 'Algo'),
(13, 242009247, 'Sí', 'Problemas de salud mental', 'Siempre', 3, 'Algo'),
(14, 116756900, 'No', 'Económica', 'Siempre', 4, 'Algo'),
(15, 242010606, 'Sí', 'Dificultad en las materias', 'Siempre', 4, 'Algo'),
(16, 242001424, 'Sí', 'Económica', 'Casi siempre', 3, 'Algo'),
(17, 242005345, 'Sí', 'Problemas familiares, Falta de interés', 'A veces falto', 2, 'Algo'),
(18, 242001298, 'Sí', 'Económica, Dificultad en las materias', 'Siempre', 4, 'Algo'),
(19, 242003235, 'No', 'Hasta ahora ninguno', 'Siempre', 4, 'Algo'),
(20, 240089037, 'Sí', 'Problemas de salud mental', 'A veces falto', 2, 'Algo'),
(21, 242009443, 'Sí', 'Dificultad en las materias', 'Siempre', 4, 'Algo'),
(22, 240112358, 'No', NULL, 'Siempre', 4, 'Algo'),
(23, 225678905, 'Sí', 'Dificultad en las materias', 'Casi siempre', 3, 'Algo'),
(24, 238765432, 'Sí', 'Distancia del plantel', 'Frecuentemente falto', 4, 'Poco'),
(25, 236000999, 'No', NULL, 'Siempre', 5, 'Sí, mucho'),
(26, 234567890, 'No', NULL, 'Casi siempre', 4, 'Algo'),
(27, 242009876, 'Sí', 'Económica, Problemas familiares', 'Casi siempre', 3, 'Poco'),
(28, 242009576, 'Sí', 'Económica, Problemas familiares, Dificultad en las materias', 'Siempre', 4, 'Algo'),
(29, 242006574, 'No', 'Ninguna', 'Casi siempre', 4, 'Sí, mucho'),
(30, 242007563, 'Sí', 'Económica, Dificultad en las materias', 'A veces falto', 3, 'Poco'),
(31, 245670123, 'Sí', 'Económica, Dificultad en las materias', 'Frecuentemente falto', 2, 'Poco'),
(32, 239120000, 'No', NULL, 'Siempre', 4, 'Sí, mucho'),
(33, 244556677, 'Sí', 'Dificultad en las materias', 'Casi siempre', 4, 'Algo'),
(34, 223445566, 'Sí', 'Falta de interés, Dificultad en las materias', 'A veces falto', 3, 'Poco'),
(35, 232109876, 'Sí', 'Dificultad en las materias', 'A veces falto', 5, 'Poco'),
(36, 242008797, 'Sí', 'Económica, Dificultad en las materias', 'A veces falto', 4, 'Algo'),
(37, 224004748, 'No', 'Dificultad en las materias', 'Siempre', 3, 'Algo'),
(38, 242005467, 'Sí', 'Económica', 'Siempre', 2, 'Algo'),
(39, 242005632, 'Sí', 'Económica', 'A veces falto', 3, 'Algo'),
(40, 202478954, 'Sí', 'Económica', 'Casi siempre', 4, 'Poco');

CREATE TABLE secc_2 (
    id_s2 INT PRIMARY KEY, 
    matricula INT, 
    trabajas TEXT, 
    ingreso_mensual VARCHAR(30), 
    ingresos_suficientes TEXT, 
    ingreso_familiar VARCHAR(30), 
    gasto_principal TEXT, 
    apoyo_beca TEXT, 
    ingreso_beca VARCHAR(30), 
    consideras_factor_economico INT,
    FOREIGN KEY (matricula) REFERENCES datos_g(matricula),
    FOREIGN KEY (ingreso_mensual) REFERENCES rangos_econo(id_ingreso),
    FOREIGN KEY (ingreso_familiar) REFERENCES rangos_econo(id_ingreso),
    FOREIGN KEY (ingreso_beca) REFERENCES rangos_econo(id_ingreso));

ALTER TABLE secc_2
MODIFY ingreso_beca VARCHAR(30) NULL;

INSERT INTO secc_2 (
    id_s2, 
    matricula, 
    trabajas, 
    ingreso_mensual, 
    ingresos_suficientes, 
    ingreso_familiar, 
    gasto_principal, 
    apoyo_beca, 
    ingreso_beca, 
    consideras_factor_economico)
VALUES 
(1, 222086341, 'No', 'Menos de $5,000', 'Sí', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar, En transporte', 'Sí', 'Menos de $5,000', 4),
(2, 221072505, 'Sí, medio tiempo', 'Menos de $5,000', 'Sí', 'Menos de $5,000', 'En comida y servicios del hogar, En transporte', 'No', 'No sé / Prefiero no decirlo', 5),
(3, 202410478, 'Sí, medio tiempo', 'Entre $10,000 y $15,000', 'Sí', 'Más de $15,000', 'En comida y servicios del hogar', 'Sí', 'Menos de $5,000', 5),
(4, 212005432, 'No', 'Menos de $5,000', 'Sí', 'Menos de $5,000', 'En comida y servicios del hogar, En transporte, En estudios ( materiales, útiles, transporte, etc.), En salud o medicamentos', 'No', 'No sé / Prefiero no decirlo', 5),
(5, 212078677, 'No', 'No sé / Prefiero no decirlo', 'No', 'No sé / Prefiero no decirlo', 'En comida y servicios del hogar, En transporte, En estudios ( materiales, útiles, transporte, etc.)', 'No', 'No sé / Prefiero no decirlo', 3),
(6, 251187971, 'Sí, tiempo completo', 'Entre $5,000 y $10,000', 'No', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar, En renta o pago de vivienda, En transporte, En estudios ( materiales, útiles, transporte, etc.), En salud o medicamentos', 'Sí', 'Menos de $5,000', 5),
(7, 252043502, 'Sí, tiempo completo', 'Entre $5,000 y $10,000', 'Sí', 'Entre $10,000 y $15,000', 'En comida y servicios del hogar, En transporte', 'No', 'No sé / Prefiero no decirlo', 4),
(8, 242010600, 'No', 'Menos de $5,000', 'Sí', 'Más de $15,000', 'Artículos personales o alimentarios', 'No', 'No sé / Prefiero no decirlo', 5),
(9, 242011497, 'No', 'No sé / Prefiero no decirlo', 'Sí', 'Entre $10,000 y $15,000', 'En comida y servicios del hogar', 'Sí', 'Menos de $5,000', 5),
(10, 689087658, 'No', 'Menos de $5,000', 'Sí', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar, En transporte', 'Sí', 'Menos de $5,000', 5),
(11, 242006644, 'Sí, medio tiempo', 'Menos de $5,000', 'A veces', 'Entre $10,000 y $15,000', 'En comida y servicios del hogar, En transporte', 'No', 'No sé / Prefiero no decirlo', 5),
(12, 242009240, 'Sí, tiempo completo', 'Entre $10,000 y $15,000', 'Sí', 'Más de $15,000', 'En comida y servicios del hogar, En transporte, En estudios ( materiales, útiles, transporte, etc.)', 'No', 'No sé / Prefiero no decirlo', 5),
(13, 242009247, 'Sí, medio tiempo', 'Menos de $5,000', 'A veces', 'Entre $10,000 y $15,000', 'En comida y servicios del hogar, En transporte', 'No', 'No sé / Prefiero no decirlo', 5),
(14, 116756900, 'No', 'Menos de $5,000', 'Sí', 'Entre $10,000 y $15,000', 'En comida y servicios del hogar, En estudios ( materiales, útiles, transporte, etc.)', 'Sí', 'Más de $15,000', 5),
(15, 242010606, 'No', 'Menos de $5,000', 'Sí', 'Más de $15,000', 'Artículos personales', 'No', 'No sé / Prefiero no decirlo', 4),
(16, 242001424, 'Sí, medio tiempo', 'Entre $5,000 y $10,000', 'No', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar, En transporte', 'No', 'No sé / Prefiero no decirlo', 5),
(17, 242005345, 'Sí, tiempo completo', 'Entre $5,000 y $10,000', 'Sí', 'Entre $10,000 y $15,000', 'En comida y servicios del hogar, En transporte', 'No', 'No sé / Prefiero no decirlo', 4),
(18, 242001298, 'No', 'Menos de $5,000', 'A veces', 'Entre $5,000 y $10,000', 'En transporte, En estudios ( materiales, útiles, transporte, etc.)', 'No', 'No sé / Prefiero no decirlo', 4),
(19, 242003235, 'No', 'Menos de $5,000', 'No', 'Menos de $5,000', 'En transporte', 'No', 'No sé / Prefiero no decirlo', 5),
(20, 240089037, 'Sí, medio tiempo', 'Menos de $5,000', 'A veces', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar, En renta o pago de vivienda, En transporte', 'Sí', 'Menos de $5,000', 2),
(21, 242009443, 'Sí, medio tiempo', 'Menos de $5,000', 'Sí', 'Menos de $5,000', 'En estudios ( materiales, útiles, transporte, etc.)', 'No', 'Menos de $5,000', 3),
(22, 240112358, 'No', 'Entre $5,000 y $10,000', 'Sí', 'Entre $10,000 y $15,000', 'En comida y servicios del hogar', 'Sí', 'Menos de $5,000', 4),
(23, 225678905, 'Sí, tiempo completo', 'Entre $5,000 y $10,000', 'Sí', 'Entre $5,000 y $10,000', 'En renta o pago de vivienda, En transporte', 'No', 'No sé / Prefiero no decirlo', 3),
(24, 238765432, 'Sí, medio tiempo', 'Menos de $5,000', 'A veces', 'No sé / Prefiero no decirlo', 'En comida y servicios del hogar, En renta o pago de vivienda, En transporte', 'No', 'No sé / Prefiero no decirlo', 5),
(25, 236000999, 'No', 'Menos de $5,000', 'Sí', 'Entre $5,000 y $10,000', 'En transporte, En estudios ( materiales, útiles, transporte, etc.)', 'Sí', 'Menos de $5,000', 4),
(26, 234567890, 'No', 'Menos de $5,000', 'A veces', 'Menos de $5,000', 'En comida y servicios del hogar, En transporte', 'Sí', 'Menos de $5,000', 5),
(27, 242009876, 'Sí, tiempo completo', 'Entre $5,000 y $10,000', 'A veces', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar, En renta o pago de vivienda, En transporte', 'No', 'No sé / Prefiero no decirlo', 3),
(28, 242009576, 'Sí, tiempo completo', 'Menos de $5,000', 'A veces', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar, En transporte, En estudios ( materiales, útiles, transporte, etc.)', 'No', 'No sé / Prefiero no decirlo', 5),
(29, 242006574, 'Sí, medio tiempo', 'Entre $5,000 y $10,000', 'Sí', 'Entre $10,000 y $15,000', 'En comida y servicios del hogar', 'No', 'No sé / Prefiero no decirlo', 4),
(30, 242007563, 'Sí, medio tiempo', 'Menos de $5,000', 'Sí', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar', 'No', 'No sé / Prefiero no decirlo', 4),
(31, 245670123, 'Sí, tiempo completo', 'Entre $5,000 y $10,000', 'A veces', 'No sé / Prefiero no decirlo', 'En comida y servicios del hogar, En renta o pago de vivienda, En transporte', 'No', 'No sé / Prefiero no decirlo', 5),
(32, 239120000, 'No', 'Menos de $5,000', 'A veces', 'Entre $10,000 y $15,000', 'En estudios ( materiales, útiles, transporte, etc.)', 'Sí', 'Menos de $5,000', 5),
(33, 244556677, 'No', 'Menos de $5,000', 'Sí', 'Entre $10,000 y $15,000', 'En estudios ( materiales, útiles, transporte, etc.)', 'Sí', 'Menos de $5,000', 4),
(34, 223445566, 'No', 'Menos de $5,000', 'A veces', 'No sé / Prefiero no decirlo', 'En transporte, En estudios ( materiales, útiles, transporte, etc.)', 'Sí', 'Menos de $5,000', 5),
(35, 232109876, 'No', 'No sé / Prefiero no decirlo', 'Sí', 'Entre $5,000 y $10,000', 'En estudios ( materiales, útiles, transporte, etc.)', 'Sí', 'Menos de $5,000', 5),
(36, 242008797, 'Sí, medio tiempo', 'Entre $5,000 y $10,000', 'No', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar, En renta o pago de vivienda, En transporte', 'No', 'No sé / Prefiero no decirlo', 5),
(37, 224004748, 'Sí, medio tiempo', 'Entre $5,000 y $10,000', 'No', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar, En transporte, En salud o medicamentos', 'No', 'No sé / Prefiero no decirlo', 5),
(38, 242005467, 'No', 'Menos de $5,000', 'A veces', 'Entre $5,000 y $10,000', 'En renta o pago de vivienda, En transporte, En estudios ( materiales, útiles, transporte, etc.)', 'Sí', 'Menos de $5,000', 5),
(39, 242005632, 'Sí, medio tiempo', 'Menos de $5,000', 'No', 'Entre $5,000 y $10,000', 'En comida y servicios del hogar, En renta o pago de vivienda, En transporte, En estudios ( materiales, útiles, transporte, etc.)', 'No', 'No sé / Prefiero no decirlo', 5),
(40, 202478954, 'Sí, medio tiempo', 'Entre $10,000 y $15,000', 'A veces', 'Más de $15,000', 'En comida y servicios del hogar', 'Sí', 'Menos de $5,000', 5);

CREATE TABLE secc_3 (
    id_s3 INT PRIMARY KEY, 
    matricula INT, 
    id_tiempo VARCHAR(30), 
    medio_transporte TEXT, 
    consideras_factor_distancia TEXT,
    FOREIGN KEY (matricula) REFERENCES datos_g(matricula),
    FOREIGN KEY (id_tiempo) REFERENCES rangos_tiemp(id_tiempo));

INSERT INTO secc_3 (
    id_s3, Matricula, 
    id_tiempo, 
    medio_transporte, 
    consideras_factor_distancia)

VALUES 
(1, 222086341, '1 a 2 horas', 'Transporte público', 'Sí'),
(2, 221072505, 'Más de 2 horas', 'Transporte público', 'Sí'),
(3, 202410478, '1 a 2 horas', 'Transporte público', 'Sí'),
(4, 212005432, '1 a 2 horas', 'Transporte público', 'Sí'),
(5, 212078677, 'Menos de 30 minutos', 'Transporte público', 'No'),
(6, 251187971, 'Más de 2 horas', 'Transporte público', 'Sí'),
(7, 252043502, '30 minutos a 1 hora', 'Transporte público', 'Sí'),
(8, 242010600, '30 minutos a 1 hora', 'Transporte público', 'No'),
(9, 242011497, 'Menos de 30 minutos', 'Bicicleta / Caminando', 'Sí'),
(10, 689087658, '1 a 2 horas', 'Transporte público', 'Sí'),
(11, 242006644, '1 a 2 horas', 'Transporte público', 'Sí'),
(12, 242009240, '1 a 2 horas', 'Transporte público', 'Sí'),
(13, 242009247, '1 a 2 horas', 'Transporte público', 'Sí'),
(14, 116756900, 'Menos de 30 minutos', 'Bicicleta / Caminando', 'Sí'),
(15, 242010606, '30 minutos a 1 hora', 'Transporte público', 'No'),
(16, 242001424, '30 minutos a 1 hora', 'Transporte público', 'Sí'),
(17, 242005345, '1 a 2 horas', 'Transporte público', 'Sí'),
(18, 242001298, '30 minutos a 1 hora', 'Bicicleta / Caminando', 'No'),
(19, 242003235, 'Menos de 30 minutos', 'Bicicleta / Caminando', 'Sí'),
(20, 240089037, '1 a 2 horas', 'Transporte público', 'Sí'),
(21, 242009443, 'Menos de 30 minutos', 'Transporte público', 'Sí'),
(22, 240112358, 'Menos de 30 minutos', 'Bicicleta / Caminando', 'No'),
(23, 225678905, '30 minutos a 1 hora', 'Bicicleta / Caminando', 'Sí'),
(24, 238765432, 'Más de 2 horas', 'Transporte público', 'Sí'),
(25, 236000999, '30 minutos a 1 hora', 'Transporte público', 'Sí'),
(26, 234567890, 'Más de 2 horas', 'Vehículo propio', 'Sí'),
(27, 242009876, '1 a 2 horas', 'Transporte público', 'Sí'),
(28, 242009576, '30 minutos a 1 hora', 'Transporte público', 'Sí'),
(29, 242006574, 'Menos de 30 minutos', 'Bicicleta / Caminando', 'Sí'),
(30, 242007563, '1 a 2 horas', 'Transporte público', 'Sí'),
(31, 245670123, '1 a 2 horas', 'Transporte público', 'Sí'),
(32, 239120000, 'Menos de 30 minutos', 'Bicicleta / Caminando', 'Sí'),
(33, 244556677, '30 minutos a 1 hora', 'Transporte público', 'Sí'),
(34, 223445566, '1 a 2 horas', 'Transporte público', 'Sí'),
(35, 232109876, '30 minutos a 1 hora', 'Vehículo propio', 'Sí'),
(36, 242008797, '1 a 2 horas', 'Transporte público', 'Sí'),
(37, 224004748, '1 a 2 horas', 'Transporte público', 'Sí'),
(38, 242005467, '1 a 2 horas', 'Transporte público', 'Sí'),
(39, 242005632, 'Más de 2 horas', 'Transporte público', 'Sí'),
(40, 202478954, '1 a 2 horas', 'Transporte público', 'Sí');

CREATE TABLE secc_4 (
    id_s4 INT PRIMARY KEY, 
    matricula INT, 
    apoyado_familia TEXT, 
    sentido_emocional TEXT, 
    pertenencia_uni TEXT, 
    comprometido_concluir INT,
    FOREIGN KEY(matricula) REFERENCES datos_g(matricula));

INSERT INTO secc_4 (
    id_s4, 
    Matricula, 
    apoyado_familia, 
    sentido_emocional, 
    pertenencia_uni, 
    comprometido_concluir)

VALUES 
(1, 222086341, 'Sí', 'Frecuentemente', 'Débil', 10),
(2, 221072505, 'Sí', 'Algunas veces', 'Moderado', 10),
(3, 202410478, 'Sí', 'Algunas veces', 'Moderado', 8),
(4, 212005432, 'Sí', 'Algunas veces', 'Muy fuerte', 10),
(5, 212078677, 'Sí', 'Nunca', 'Muy fuerte', 10),
(6, 251187971, 'No', 'Frecuentemente', 'Moderado', 7),
(7, 252043502, 'Sí', 'Algunas veces', 'Moderado', 10),
(8, 242010600, 'Sí', 'Frecuentemente', 'Moderado', 8),
(9, 242011497, 'Sí', 'Algunas veces', 'Moderado', 9),
(10, 689087658, 'Sí', 'Rara vez', 'Moderado', 7),
(11, 242006644, 'Sí', 'Algunas veces', 'Moderado', 8),
(12, 242009240, 'Sí', 'Algunas veces', 'Moderado', 10),
(13, 242009247, 'Sí', 'Algunas veces', 'Débil', 7),
(14, 116756900, 'Sí', 'Algunas veces', 'Moderado', 9),
(15, 242010606, 'Sí', 'Frecuentemente', 'Moderado', 9),
(16, 242001424, 'Sí', 'Frecuentemente', 'Moderado', 6),
(17, 242005345, 'No', 'Frecuentemente', 'Moderado', 7),
(18, 242001298, 'Sí', 'Algunas veces', 'Débil', 8),
(19, 242003235, 'Sí', 'Nunca', 'Nulo', 4),
(20, 240089037, 'Sí', 'Algunas veces', 'Débil', 5),
(21, 242009443, 'Sí', 'Algunas veces', 'Moderado', 8),
(22, 240112358, 'Sí', 'Rara vez', 'Moderado', 9),
(23, 225678905, 'Sí', 'Algunas veces', 'Moderado', 7),
(24, 238765432, 'No', 'Frecuentemente', 'Moderado', 4),
(25, 236000999, 'Sí', 'Rara vez', 'Muy fuerte', 10),
(26, 234567890, 'Sí', 'Nunca', 'Moderado', 9),
(27, 242009876, 'Sí', 'Algunas veces', 'Muy fuerte', 3),
(28, 242009576, 'Sí', 'Algunas veces', 'Moderado', 10),
(29, 242006574, 'Sí', 'Rara vez', 'Débil', 8),
(30, 242007563, 'Sí', 'Algunas veces', 'Moderado', 5),
(31, 245670123, 'Sí', 'Frecuentemente', 'Nulo', 2),
(32, 239120000, 'Sí', 'Nunca', 'Muy fuerte', 10),
(33, 244556677, 'Sí', 'Rara vez', 'Moderado', 10),
(34, 223445566, 'Sí', 'Algunas veces', 'Moderado', 10),
(35, 232109876, 'Sí', 'Algunas veces', 'Débil', 8),
(36, 242008797, 'No', 'Frecuentemente', 'Débil', 3),
(37, 224004748, 'Sí', 'Algunas veces', 'Moderado', 10),
(38, 242005467, 'Sí', 'Frecuentemente', 'Débil', 8),
(39, 242005632, 'No', 'Frecuentemente', 'Moderado', 6),
(40, 202478954, 'Sí', 'Algunas veces', 'Moderado', 8);

CREATE TABLE secc_5 (
    id_s5 INT PRIMARY KEY, 
    Matricula INT, 
    personas_desertadas TEXT, 
    razon_desercion TEXT,
    FOREIGN KEY(matricula) REFERENCES datos_g(matricula));

INSERT INTO secc_5 (
    id_s5, Matricula, 
    personas_desertadas, 
    razon_desercion)

VALUES 
(1, 222086341, 'Sí', 'Familiar'),
(2, 221072505, 'No', 'No lo sé'),
(3, 202410478, 'Sí', 'Laboral'),
(4, 212005432, 'Sí', 'Psicologica'),
(5, 212078677, 'No', 'No conozco aun a nadie'),
(6, 251187971, 'Sí', 'Economica'),
(7, 252043502, 'Sí', 'Laboral'),
(8, 242010600, 'Sí', 'Laboral'),
(9, 242011497, 'No', 'No sé'),
(10, 689087658, 'Sí', 'Laboral'),
(11, 242006644, 'No', 'No sé'),
(12, 242009240, 'Sí', 'Laboral'),
(13, 242009247, 'Sí', 'Familiar'),
(14, 116756900, 'No', 'Laboral'),
(15, 242010606, 'Sí', 'Economica'),
(16, 242001424, 'Sí', 'Laboral'),
(17, 242005345, 'Sí', 'Laboral'),
(18, 242001298, 'Sí', 'Familiar'),
(19, 242003235, 'No', 'No he conocido'),
(20, 240089037, 'Sí', 'Psicologica'),
(21, 242009443, 'No', 'Laboral'),
(22, 240112358, 'No', NULL),
(23, 225678905, 'Sí', 'Laboral'),
(24, 238765432, 'No', NULL),
(25, 236000999, 'No', NULL),
(26, 234567890, 'Sí', 'Laboral'),
(27, 242009876, 'Sí', 'Laboral'),
(28, 242009576, 'Sí', 'Economica'),
(29, 242006574, 'Sí', 'Economica'),
(30, 242007563, 'No', 'Economica'),
(31, 245670123, 'Sí', 'Psicologica'),
(32, 239120000, 'No', NULL),
(33, 244556677, 'Sí', 'Economica'),
(34, 223445566, 'Sí', 'Laboral'),
(35, 232109876, 'Sí', 'Familiar'),
(36, 242008797, 'Sí', 'Familiar'),
(37, 224004748, 'Sí', 'Economica'),
(38, 242005467, 'Sí', 'Laboral'),
(39, 242005632, 'Sí', 'Laboral'),
(40, 202478954, 'Sí', 'Laboral');

-- TABLE licenciaturas

CREATE TABLE licenciaturas (
    id_carreras VARCHAR(10) PRIMARY KEY, 
    nombre TEXT);

INSERT INTO licenciaturas(
    id_carreras,
    nombre) 

VALUES 
('LP', 'Licenciatura en Psicologia'),
('LCDN', 'Licenciatura en Ciencia de Datos para negocios'),
('LRI', 'Licenciatura en Relaciones Internacionales'),
('LCYF', 'Licenciatura en Contabilidad y Finanzas'),
('LHNM', 'Lienciatura en Humanidades y Narrativas Multimedia'),
('LAE', 'Licenciatura en Administracion de Empresas'),
('LDC', 'Licencitura en Derecho y Criminalistica'),
('LMV', 'Licencitura en Mercadotecnia y Ventas');

-- TABLE rangos_econo

CREATE TABLE rangos_econo (
    id_ingreso VARCHAR(30) PRIMARY KEY, 
    rango_inferior FLOAT, 
    rango_superior FLOAT);

INSERT INTO rangos_econo (
    id_ingreso, 
    rango_inferior, 
    rango_superior) 

VALUES 
('Menos de $5,000', NULL, 5000),
('Entre $5,000 y $10,000', 5000.0, 10000),
('Entre $10,000 y $15,000', 10000.0, 15000),
('No sé / Prefiero no decirlo', 0.0, 0);

INSERT INTO rangos_econo (id_ingreso, rango_inferior, rango_superior)
VALUES ('Más de $15,000', 15000, NULL);

-- TABLE rangos_tiemp
CREATE TABLE rangos_tiemp (
    id_tiempo VARCHAR(30) PRIMARY KEY, 
    rango_inferior FLOAT, 
    rango_superior FLOAT);

INSERT INTO rangos_tiemp (
    id_tiempo, 
    rango_inferior, 
    rango_superior) 

VALUES 
('Menos de 30 minutos', 0.0, 0.5),
('30 minutos a 1 hora', 0.5, 1.0),
('1 a 2 horas', 1.0, 2.0),
('Más de 2 horas', 2.0, 3.0);

-- consultas 

SELECT id_carreras, COUNT(*) AS total
FROM datos_g
GROUP BY id_carreras;

SELECT l.nombre, COUNT(*) AS total_estudiantes
FROM datos_g d
JOIN licenciaturas l ON d.id_carreras = l.id_carreras
GROUP BY l.nombre;