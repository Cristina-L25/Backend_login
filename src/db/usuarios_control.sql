create database control_usuarios;
use control_usuarios;

CREATE TABLE roles (
	id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE permisos (
	id_permiso INT AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50),
    descripcion TEXT
);


CREATE TABLE rol_permiso (
	id_rol_permiso INT AUTO_iNCREMENT PRIMARY KEY,
    id_rol INT,
    permiso_id INT,
    FOREIGN KEY (id_rol) REFERENCES roles (id_rol),
    FOREIGN KEY (permiso_id) REFERENCES permisos (id_permiso)
);

CREATE TABLE usuarios (
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre varchar (100),
    email varchar (300), 
    clave varchar(500)
);

-- INSERTAR ROLES
INSERT INTO roles (nombre) VALUES ('Administrador'), ('Empleado');

-- INSERTAR PERMISOS 
INSERT INTO permisos (nombre, descripcion) VALUES  
('Crear', 'Permite crear nuevos registros'),
('Leer', 'Permite visualizar registros'),
('Actualizar','Permite modificar registros existentes'),
('Eliminar','Permite eliminar registros');

-- Asignar permisos al administrador (id_rol = 1)
INSERT INTO rol_permiso (id_rol, permiso_id) VALUES
(1,1), -- Crear 
(1,2), -- Leer
(1,3),-- Actualizar
(1,4); -- Eliminar 

-- Asignar permisos al rol empleado (id_rol = 2)
INSERT INTO rol_permiso (id_rol, permiso_id) VALUES
(2,2);

-- Insertar usuario admin (contraseña: 123456)
INSERT INTO usuarios (nombre, email, clave, id_rol) VALUES
('Admin', 'admin@gmail.com', '', 1);
-- La contraseña es: 1

-- Insertar usuario empleado (contraseña: 123456)
INSERT INTO usuarios (nombre, email, clave, id_rol) VALUES
('Empleado','empleado@gmail.com',2);
-- La contraseña es 1
