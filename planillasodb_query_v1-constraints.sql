/*  ----------------- [PRIMARY KEYS] ----------------- */
-- persona
alter table persona
add constraint pk_idPersona_codPersona_Persona 
primary key(idPersona, codPersona);

-- ubigeo
alter table ubigeo
add constraint pk_idUbigeo_Ubigeo 
primary key (idUbigeo);

-- pais
alter table pais
add constraint pk_idPais_Pais
primary key (idPais);

-- usuario
alter table usuario
add constraint pk_idPersona_codPersona_Persona_usuaio
primary key(idPersona, codPersona);

-- tipo_usuario
alter table tipo_usuario
add constraint pk_idTipoUsuario
primary key (idTipoUsuario)




/*  ----------------- [FOREIGN KEYS] ----------------- */

-- persona (idUbigeo)
alter table persona
add constraint fk_lugarNacimiento_PersonaUbigeo
foreign key (lugarNacimiento)
references Ubigeo(idUbigeo);

alter table persona
add constraint fk_lugarResidencia_PersonaUbigeo
foreign key (lugarResidencia)
references Ubigeo(idUbigeo);

-- persona (idPais)
alter table persona
add constraint fk_idPais_PersonaPais
foreign key (idPais)
references Pais(idPais)

-- usuario (idPersona, codPersona)
alter table usuario
add constraint fk_idPersona_codPersona_usuario
foreign key (idPersona, codPersona)
references persona(idPersona, codPersona)

-- usuario (idTipoUsuario)
alter table usuario
add constraint fk_idTipoUsuario_usuario
foreign key (idTipoUsuario)
references tipo_usuario(idTipoUsuario)