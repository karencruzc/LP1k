use ladyshoes_db;

CREATE TABLE marca (
    id int NOT NULL AUTO_INCREMENT,
    nombre varchar(55) NOT NULL,
    descripcion varchar(55),
    estado varchar(55),
    PRIMARY KEY (id)
);

CREATE TABLE empleado (
    id int NOT NULL AUTO_INCREMENT,
    nombres varchar(55) NOT NULL,
    apellidos varchar(55) NOT NULL,
    sexo varchar(20) NOT NULL,
    direccion varchar(55) NOT NULL,
    email varchar(55)NOT NULL,
    edad int NOT NULL,
    horas INT NOT NULL,
    sueldo decimal NOt NULL,
    PRIMARY KEY (id)
);