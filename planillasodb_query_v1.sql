create database planillasodb;

use planillasodb;

-- tabla persona (datos estándar de una persona común y corriente)
create table persona
(
idPersona int identity(1,1) not null,
codPersona char(8) not null,
apellidoPat varchar(50) not null,
apellidoMat varchar(50) not null,
nombre varchar(50) not null,
idPais int not null,
dni char(8) not null,
estadoCivil char(1) not null,
sexo char(1) not null,
fechaNacimiento datetime not null,
lugarNacimiento int not null,
lugarResidencia int not null,
direccion varchar(100) not null,
telefono varchar(9) not null,
correo varchar(100) not null,
fechaCreacion datetime not null,
fechaUltActualizacion datetime null,
activo bit not null
)



-- tabla trabajador (datos estándar de una trabajador de la empresa SO)
create table trabajador
(
idPersona int identity(1,1) not null,
codPersona char(8) not null,
)

-- tabla pais (contiene todos los nombres de los paises y nacionalidad)
create table pais
(
idPais int identity(1,1) not null,
codPais char(3) not null,
nombre varchar(50) not null,
nacionalidad varchar(50) not null,
activo bit not null
)

-- tabla ubigeo (Dpto, Prov, Dist)
create table ubigeo
(
idUbigeo int identity(1,1) not null,
codUbigeo char(8) not null,
codDepartamento char(2) not null,
nombreDepartamento varchar(50) not null,
codProvincia char(2) not null,
nombreProvincia varchar(50) not null,
codDistrito char(2) not null,
nombreDistrito varchar(50) not null,
latitud varchar(50) not null,
longitud varchar(50) not null,
activo bit not null
)

-- tabla usuario
create table usuario
(
idPersona int identity(1,1) not null,
codPersona char(8) not null,
idTipoUsuario int not null,
usuario char(8) not null,
contrasena char(8) not null,
fechaCreacion datetime not null,
fechaUltActualizacion datetime null,
activo bit not null
)

-- tabla nivel de usuario (adm, otros)
create table tipo_usuario
(
idTipoUsuario int identity(1,1) not null,
nombre varchar(50) not null,
activo bit not null
)

/*
drop table persona
drop table ubigeo
drop table pais
drop table tipo_usuario
drop table usuario
*/