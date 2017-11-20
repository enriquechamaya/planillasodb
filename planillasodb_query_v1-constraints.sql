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