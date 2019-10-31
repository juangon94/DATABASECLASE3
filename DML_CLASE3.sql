insert into Colegio(idColegio,Nombre,Direccion,Estado,Ciudad,Codigo_Postal,Email,Telefono) values(1,'Colegio Americano','322 CRA 20' ,'Valle Del Cauca','Cali','333','ColegioAmericano@gmail.com','555-555-5555');
insert into Sede(idSede,Nombre,Direccion,Ciudad,Codigo_Postal,idColegio ) values(1,'Sede1', '333 CRA 20', 'Cali','333',1 );
insert into Estudiante( idEstudiante,Nombre,Apellido,DOB,Direccion,Estado,Ciudad,Codigo_Postal,Grado,idSede) values (1,'Juan','Gonzalez','02-20-1994','323 CRA 30','Valle Del Cauca','Cali','233','10',1);
insert into Horario ( idHorario,Fecha) values(1,'2019-10-30');
insert into Estudiante_Horario ( idEstudiante_Horario,idEstudiante,idHorario) values (1,1,1);
insert into Profesor ( idProfesor,Nombre,Apellido,DOB,Direccion,Ciudad,Codigo_Postal,Email) values(1,'Jon','Doe','1953-09-20','444 CRA 19','Cali','322','jondoe1954@gmail.com');
insert into Profesor_Horario (idProfesor_Horario,idProfesor,idHorario) values(1,1,1);
insert into Subject ( idSubject,Nombre) values(1,'ciencia');
insert into Profesor_Subject ( idProfesor_Subject,idProfesor,idSubject) values (1,1,1);
insert into Estudiante_Subject (idEstudiante_Subject,idEstudiante,idSubject) values(1,1,1);
insert into Salon ( idSalon,Nombre,Capacidad) values (1,'Salon A','33');
insert into Horario_Salon ( idHorario_Salon,idHorario,idSalon) values(1,1,1);
insert into Representante (idRepresentante,Nombre,Apellido,DOB,Direccion,Estado,Representantecol,Codigo_Postal,Email) values (1,'Carlos','Gonzalez','1954-08-20','323 CRA 30','Valle Del Cauca',NULL,'233','Carlosgonz@hotmail.com');
insert into Representante_Estudiante ( idRepresentante_Estudiante,idRepresentante,idEstudiante) values (1,1,1);
insert into Utileria ( idUtileria,Nombre,Tipo,Stock,idSalon) values(1,'escritorio','Material Salon','30',1);
insert into Colegio(idColegio,Nombre,Direccion,Estado,Ciudad,Codigo_Postal,Email,Telefono) values(2,'Colegio Americano','322 CRA 20' ,'Valle Del Cauca','Cali','333','ColegioAmericano@gmail.com','555-555-5555');
insert into Sede(idSede,Nombre,Direccion,Ciudad,Codigo_Postal,idColegio ) values(2,'Sede1', '333 CRA 20', 'Cali','333',2 );

select Sede.*,Colegio.Nombre as 'NombreColegio' from Sede
inner join Colegio on Sede.idColegio = Colegio.idColegio;
select * from Colegio where idColegio= 1;