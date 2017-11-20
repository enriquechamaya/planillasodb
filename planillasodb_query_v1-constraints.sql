/*  ----------------- [PRIMARY KEYS] ----------------- */
alter table persona
add constraint pk_idPersona_codPersona_Persona 
primary key(idPersona, codPersona);

alter table ubigeo
add constraint pk_codUbigeo_Ubigeo 
primary key (codUbigeo);





/*  ----------------- [FOREIGN KEYS] ----------------- */
alter table persona
add constraint fk_lugarNacimiento_PersonaUbigeo
foreign key (lugarNacimiento)
references Ubigeo(codUbigeo);

alter table persona
add constraint fk_lugarResidencia_PersonaUbigeo
foreign key (lugarResidencia)
references Ubigeo(codUbigeo);