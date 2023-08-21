create database unidad302;
use unidad302;

CREATE TABLE alumnos (
    numero_control INT PRIMARY KEY,
    nombre VARCHAR(100),
    Imail VARCHAR(100), -- Nueva columna para el correo electrónico
    edad INT,
    Pais VARCHAR(50),
    Sexo ENUM('Masculino', 'Femenino', 'Otro'),
    Fecha_Nacimiento DATE,
    Id VARCHAR(15),
    estado_Civil ENUM('Soltero', 'Casado', 'Divorciado', 'Viudo', 'Otro'),
    CP VARCHAR(10),
    Contraseña varchar(20)
);


CREATE TABLE cursos (
    id_curso INT PRIMARY KEY,
    Curso VARCHAR(100),
    Calificacion DECIMAL(5, 2),
    Nivel VARCHAR(10),
    Docente VARCHAR(100),
    Edificio VARCHAR(1),
    Salon VARCHAR(8),
    Grado VARCHAR(10)
);

CREATE TABLE cursos (
    id_curso INT PRIMARY KEY,
    numero_control INT,  -- Clave foránea para relacionar con la tabla alumnos
    Curso VARCHAR(100),
    Calificacion DECIMAL(5, 2),
    Nivel VARCHAR(10),
    Docente VARCHAR(100),
    Edificio VARCHAR(1),
    Salon VARCHAR(8),
    Grado VARCHAR(10),
    FOREIGN KEY (numero_control) REFERENCES alumnos(numero_control)
);


select alumnos();

INSERT INTO alumnos (numero_control, nombre, edad, Pais, Sexo, Fecha_Nacimiento, Id, estado_Civil, CP)
VALUES
    (1219100524, 'ARREDONDO GONZALEZ DANIEL ENRIQUE', 21, 'AR', 'Femenino', '2000-07-19', 'ABC56', 'Soltero', 37809),
    (1220100317, 'DUARTE VELAZQUEZ DANIEL', 17, 'EU', 'Masculino', '2003-11-23', 'ABC18', 'Soltero', 37807),
    (1220100629, 'GUTIERREZ MARTINEZ VALERIA IVONNE', 22, 'AT', 'Femenino', '2001-07-29', 'ABC69', 'Divorciado', 37804),
    (1220100632, 'LUNA CANTERO ANGEL IVAN', 20, 'PD', 'Masculino', '2000-04-01', 'ABC37', 'Soltero', 37801),
    (1220100209, 'MARTINEZ RAMIREZ GUADALUPE MONSERRAT', 21, 'CA', 'Femenino', '1999-01-10', 'ABC32', 'Casado', 37805),
    (1220100053, 'REYES MORALES SALVADOR', 19, 'SY', 'Masculino', '2001-07-17', 'ABC45', 'Soltero', 37802),
    (1220100597, 'SALAZAR LEON MARIA GUADALUPE', 22, 'RS', 'Femenino', '2001-05-09', 'ABC28', 'Soltero', 37800),
    (1220100596, 'TADEO MARTINEZ ALEJANDRO', 20, 'CR', 'Otro', '2002-05-29', 'ABC28', 'Soltero', 37808),
    (1220100075, 'TORRES GARCIA JOSE ROGELIO', 21, 'MX', 'Masculino', '2002-08-23', 'ABC30', 'Casado', 37806),
    (1220100595, 'TRANQUEÑO HERNANDEZ OSCAR ARMANDO', 22, 'FR', 'Masculino', '2001-06-14', 'ABC05', 'Soltero', 37807);
    
    
INSERT INTO alumnos (numero_control, nombre, Imail, edad, Pais, Sexo, Fecha_Nacimiento, Id, estado_Civil, CP, Contraseña)
VALUES (1220101235, 'Juanito bodoque final', 'final@gmail.com', 20, 'MX', 'Masculino', '2000-01-01', 'ABC123', 'Soltero', 'ABC54', 'final123');

INSERT INTO cursos (id_curso, Curso, Calificacion, Nivel, Docente, Edificio, Salon, Grado)
VALUES
    (1, 'Historia', 9, '6to', 'Juan bodoque', 'F', '10F', '8vo'),
    (2, 'Matemáticas', 8, '9no', 'Arquimides Newton', 'A', '6B', '5to'),
    (3, 'Ingles', 9, '8vo', 'Elsa Martinez', 'A', '3C', '2do'),
    (4, 'Python', 9, '4to', 'Victor Noe', 'F', 'TIC6', '7to'),
    (5, 'Historia', 9, '6to', 'Juan bodoque', 'F', '10F', '8vo'),
    (6, 'Matemáticas', 8, '9no', 'Arquimides Newton', 'A', '6B', '5to'),
    (7, 'Ingles', 9, '8vo', 'Elsa Martinez', 'A', '3C', '2do'),
    (8, 'Python', 9, '4to', 'Victor Noe', 'F', 'TIC6', '7to'),
    (9, 'Historia', 9, '6to', 'Juan bodoque', 'F', '10F', '8vo'),
	(10, 'Python', 9, '4to', 'Victor Noe', 'F', 'TIC6', '7to'),
    (11, 'Historia', 9, '6to', 'Juan bodoque', 'F', '10F', '8vo');
    use unidad302;
    select * from alumnos;
    
    select * from cursos;