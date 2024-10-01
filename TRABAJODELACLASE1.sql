-- Crear nuestra base de datos
CREATE DATABASE IF NOT EXISTS db_Usuario;
-- Usar la base de datos ya creada
USE db_Usuario;
-- Crear una tabla, que nos permitira
-- registrar usuarios
CREATE TABLE IF NOT EXISTS tb_Usuario (
	id_Usuario int auto_increment primary key,
    nombreUsuario varchar(25) NOT NULL,
    dpi varchar(13) NOT NULL,
    direccion varchar(30) NOT NULL,
    telefono varchar(8) NOT NULL,
    correo_electronico varchar(50) NOT NULL UNIQUE,
    usuario varchar(15) NOT NULL UNIQUE,
    pass varchar(20) NOT NULL,
    fecha_registro timestamp default current_timestamp
);
-- Seleccionar todos los campos de la tabla
Select * From tb_Usuario;
-- registro de informacion
insert into tb_Usuario(nombreUsuario,dpi,direccion,telefono,correo_electronico,usuario,pass)
values('Mateo','12345678','Coban','12345678','mateo@miumg.edu.gt','mateo','9876');
-- todos los campos que se van a insertar, tienen que ir dentro de apostrofes simples

-- seleccionar todos los registros de una tabla
select * from tb_Usuario;

-- insertar 2 usuarios mas

-- Seleccionar solo el campo del id = 2
select usuario,pass from tb_Usuario where id_Usario = 2;

-- consulta para validar un usuario
Select id_Usuario from tb_Usuario Where usuario = 'wilfredoac22' and pass = '4418';
-- se hace esta consulta para verificar si el id_Usuario existe
-- si existe, entonces se valida el login, de lo contrario usuario y contraseña incorrecta

