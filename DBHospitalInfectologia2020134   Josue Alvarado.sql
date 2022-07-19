/*
       Nombre del Programador: Josue Daniel Alvarado Cabrera
       Codigo Tecnico: IN5AV
       Carne: 2020134
       Fecha de Creacion: 
			05-02-2021
       Modificaciones:
			06-02-2021
				*Creacion de base de datos
				*Creacion de todas las tablas
            Insertar datos en todas las tablas
            07-02-2021
				*Insertar datos en todas las tablas
             08-02-2021
				*update en todas las tablas
				*select en todas las tablas
				*delete en todas las tablas
				*drop en todas las tablas
            
 */           
Create database DBHospitalInfectologia2020134;

USE DBHospitalInfectologia2020134;

create table Medicos(
	codigoMedico int not null,
	licenciaMedica int not null,
	nombres varchar(20) not null,
	apellidos varchar(20) not null,
	horaEntrada DATETIME not null,
	horaSalida DATETIME not null,
	turnoMaximo Int not null,
	sexo varchar(15) not null,
	primary key PK_codigoMedico (codigoMedico)
);

insert into Medicos (codigoMedico, licenciaMedica, nombres, apellidos, horaEntrada, horaSalida, turnoMaximo, sexo )
	values (2020, 2020345-0, 'Jose Juan', 'Perez Ramirez', '2014-8-6 07.00.00', '2014-8-6 19.00.00', 1, 'Masculino');

insert into Medicos (codigoMedico, licenciaMedica, nombres, apellidos, horaEntrada, horaSalida, turnoMaximo, sexo )
	values (2030, 2020456-0, 'Raul Orlando', 'Lopez Barrera', '2014-8-7 06.00.00', '2014-8-7 18.00.00', 2, 'Masculino');

insert into Medicos (codigoMedico, licenciaMedica, nombres, apellidos, horaEntrada, horaSalida, turnoMaximo, sexo )
	values (2040,1054678-0, 'Natalia Maria', 'Tobias Fernandez', '2014-8-8 08.30.00', '2014-8-8 20.00.00', 0, 'Femenino'); 

insert into Medicos (codigoMedico, licenciaMedica, nombres, apellidos, horaEntrada, horaSalida, turnoMaximo, sexo )
	values (2050, 4567895-0, 'Josue Daniel', 'Alvarado Cabrera', '2014-8-9 07.00.00', '2014-8-19 19.25.00', 0, 'Masculino');  

insert into Medicos (codigoMedico, licenciaMedica, nombres, apellidos, horaEntrada, horaSalida, turnoMaximo, sexo )
	values (2060, 3465869-0, 'Jessica Melisa', 'Tobar Navarro', '2014-8-10 09.00.00', '2014-8-10 20.00.00', 0, 'Femenino');

 
 Create table TelefonosMedico(
	codigoTelefonoMedico int not null,
	telefonoPersonal varchar(20) not null,
	telefonoTrabajo varchar (20),
	codigoMedico int not null,
	primary key PK_codigoTelefonoMedico (codigoTelefonoMedico ),
		constraint FK_TelefonosMedico_Medicos
			foreign key (codigoMedico) references Medicos (codigoMedico)
 );
 
 
 
 insert into TelefonosMedico (codigoTelefonoMedico, telefonoPersonal, telefonoTrabajo,codigoMedico )
	values (234, 23456786, 22709292,2020 );
 
 insert into TelefonosMedico (codigoTelefonoMedico, telefonoPersonal, telefonoTrabajo,codigoMedico )
	values (245, 52658674, 23219191,2030 );
 
 insert into TelefonosMedico (codigoTelefonoMedico, telefonoPersonal, telefonoTrabajo,codigoMedico )
	values (264, 42567354, 24349293,2040 );
 
 insert into TelefonosMedico (codigoTelefonoMedico, telefonoPersonal, telefonoTrabajo,codigoMedico )
	values (243, 24686363, 22659291,2050 );
 
 insert into TelefonosMedico (codigoTelefonoMedico, telefonoPersonal, telefonoTrabajo,codigoMedico )
	values (247, 42511590, 21349394,2060);
 
 create table Especialidades(
	codigoEspecialidad int not null,
	nombreEspecialidad varchar(40) not null,
	primary key PK_codigoEspecialidad (codigoEspecialidad)
 );
 
insert into Especialidades (codigoEspecialidad, nombreEspecialidad )
	values (071, 'Dermatologo');
 
insert into Especialidades (codigoEspecialidad, nombreEspecialidad )
	values (141, 'Ginecologo');
  
insert into Especialidades (codigoEspecialidad, nombreEspecialidad )
	values (201, 'Neurocirujano');
  
insert into Especialidades (codigoEspecialidad, nombreEspecialidad )
	values (231, 'Oftalmologo');
   
insert into Especialidades (codigoEspecialidad, nombreEspecialidad )
	values (241, 'Oncologo');

 create table Horarios(
	codigoHorario int not null,
	horarioInicio DATETIME not null,
	horarioSalida DATETIME not null,
	lunes boolean,
	martes boolean,
	miercoles boolean,
	jueves boolean,
	viernes boolean,
	primary key PK_codigoHorario (codigoHorario )
 );
 
 insert into Horarios (codigoHorario, horarioInicio,horarioSalida,lunes,martes,miercoles,jueves,viernes )
	values (1010, '2014-10-14 07:00:00', '2014-10-14 20:00:00', 1,1,0,0,1);
 
 insert into Horarios (codigoHorario, horarioInicio,horarioSalida,lunes,martes,miercoles,jueves,viernes )
	values (1020, '2014-10-15 06:30:00', '2014-10-15 17:00:00', 0,1,1,1,0);
 
 insert into Horarios (codigoHorario, horarioInicio,horarioSalida,lunes,martes,miercoles,jueves,viernes )
	values (1030, '2014-10-16 09:00:00', '2014-10-16 18:00:00', 1,1,1,1,0);
 
 insert into Horarios (codigoHorario, horarioInicio,horarioSalida,lunes,martes,miercoles,jueves,viernes )
	values (1040, '2014-10-17 08:30:00', '2014-10-17 19:30:00', 0,0,1,1,1);
 
 insert into Horarios (codigoHorario, horarioInicio,horarioSalida,lunes,martes,miercoles,jueves,viernes )
	values (1050, '2014-10-18 12:00:00', '2014-10-18 11:00:00', 1,1,1,1,1);
 
 
 create table Medico_Especialidad(
	codigoMedicoEspecialidad int not null,
	codigoMedico int not null,
	codigoEspecialidad int not null,
	codigoHorario int not null,
	primary key PK_codigoMedicoEspecialidad (codigoMedicoEspecialidad ),
		constraint FK_Medico_Especialidad_Especialidades
			foreign key (codigoEspecialidad) references Especialidades(codigoEspecialidad),
		constraint FK_Medico_Especialidad_Horarios
			foreign key (codigoHorario) references Horarios (codigoHorario),
		constraint FK_Medico_Especialidad_Medicos
			foreign key (codigoMedico) references Medicos (codigoMedico)
 );
 
 insert into Medico_Especialidad (codigoMedicoEspecialidad, codigoMedico,codigoEspecialidad,codigoHorario )
	values (3030,2020,71,1020);
 
 insert into Medico_Especialidad (codigoMedicoEspecialidad, codigoMedico,codigoEspecialidad,codigoHorario )
	values(3040,2030,231,1030);
 
 insert into Medico_Especialidad (codigoMedicoEspecialidad, codigoMedico,codigoEspecialidad,codigoHorario )
	values(3050,2040, 241, 1030);
 
 insert into Medico_Especialidad (codigoMedicoEspecialidad, codigoMedico,codigoEspecialidad,codigoHorario )
	values (3060, 2050,141,1040);
 
 insert into Medico_Especialidad (codigoMedicoEspecialidad, codigoMedico,codigoEspecialidad,codigoHorario )
	values (3070,2060,201,1050);
 
create table Pacientes(
	codigoPaciente int not null,
	DPI varchar(35) not null,
	apellidos varchar(50) not null,
	nombres varchar(50) not null,
	fechaNacimiento DATE not null,
	edad int ,
	direccion varchar(60) not null,
	ocupacion varchar(40) not null,
	sexo varchar(30) not null,
	primary key (codigoPaciente)
);

insert into Pacientes (codigoPaciente,DPI, apellidos, nombres, fechaNacimiento,edad,direccion,ocupacion,sexo )
	values (101, 2446244625356, 'Cabrera Conde', 'Iris Jeannette', '1972-08-22', 48, 'Calle A 11-3 Zona 7', 'Receptora', 'Femenino');

insert into Pacientes (codigoPaciente,DPI, apellidos, nombres, fechaNacimiento,edad,direccion,ocupacion,sexo )
	values (102, 2335637474838, 'Milian Orellana', 'Jefri Denilson', '2000-07-15', 20, '7va Avenida La Florida', 'Maestro', 'Masculino');

insert into Pacientes (codigoPaciente,DPI, apellidos, nombres, fechaNacimiento,edad,direccion,ocupacion,sexo )
	values (103, 24464623837743, 'Navas Ochoa', 'Ian Andree', '2003-09-9', 17, '19 Avenida 8 - 10 Zona 11', 'Estudiante', 'Masculino');

insert into Pacientes (codigoPaciente,DPI, apellidos, nombres, fechaNacimiento,edad,direccion,ocupacion,sexo )
	values (104, 2134567253637, 'Higueros Fernandez', 'Luisa Fernanda', '1999-01-5', 22, '7 Av 34 - 12 Zona 8', 'Actriz', 'Femenino');

insert into Pacientes (codigoPaciente,DPI, apellidos, nombres, fechaNacimiento,edad,direccion,ocupacion,sexo )
	values (105, 2562573521467, 'Martinez Fernandez', 'Henry Sebastian', '1980-11-30', 40, '5 Av 33-4 Zona 9', 'Chef', 'Masculino');
 
create table ContactoUrgencia(
	codigoContactoUrgencia int not null,
	nombres varchar(30) not null,
	apellidos varchar(30) not null,
	numeroContacto varchar(10) not null,
	codigoPaciente int not null,
	primary key (codigoContactoUrgencia),
		constraint  FK_ContactoUrgencia_Pacientes
			foreign key (codigoPaciente) references Pacientes (codigoPaciente)
 );
 
 insert into ContactoUrgencia (codigoContactoUrgencia,nombres,apellidos,numeroContacto,codigoPaciente )
	values (10, 'Fernando', 'Cabrera', 45637484, 101);
 
 insert into ContactoUrgencia (codigoContactoUrgencia,nombres,apellidos,numeroContacto,codigoPaciente )
	values (20, 'Maria', 'Orellana', 24524674, 102);
 
 insert into ContactoUrgencia (codigoContactoUrgencia,nombres,apellidos,numeroContacto,codigoPaciente )
	values (30, 'Cristian', 'Navas', 42567284, 103);
 
 insert into ContactoUrgencia (codigoContactoUrgencia,nombres,apellidos,numeroContacto,codigoPaciente )
	values (40, 'Josue', 'Higueros', 42582053, 104);
 
 insert into ContactoUrgencia (codigoContactoUrgencia,nombres,apellidos,numeroContacto,codigoPaciente )
	values (50, 'Gabriela', 'Martinez', 52627485, 105);
 
 create table Cargos(
	codigoCargo int not null,
	nombreCargo varchar(50) not null,
	primary key (codigoCargo)
 );
 
 insert into Cargos (codigoCargo, nombreCargo )
	values ( 20, 'Personal Enfermeria');
 
 insert into Cargos (codigoCargo, nombreCargo )
	values (30, 'Auxiliar Enfermeria');
 
 insert into Cargos (codigoCargo, nombreCargo )
	values (40, 'Fisioterapeutas');
 
 insert into Cargos (codigoCargo, nombreCargo )
	values (50, 'Logopedas');
 
 insert into Cargos (codigoCargo, nombreCargo )
	values (60, 'Terapeutas');
 
 create table Areas(
	codigoArea int not null,
	nombreArea varchar(40) not null,
	primary key (codigoArea)
 );
 
 insert into Areas (codigoArea,nombreArea )
	values (71, 'Anestesiologia');
 
 insert into Areas (codigoArea,nombreArea )
	values (72, 'Cardiologia');
 
 insert into Areas (codigoArea,nombreArea )
	values (73, 'Hematologia');
 
 insert into Areas (codigoArea,nombreArea )
	values (74, 'Neumolgia');
 
 insert into Areas (codigoArea,nombreArea )
	values (75, 'Pediatria');
 
 create table ResponsableTurno(
	codigoResponsableTurno int not null,
	nombreResponsable varchar(50) not null,
	apellidosResponsable varchar(50) not null,
	telefonoPersonal varchar(15) not null,
	codigoArea int not null,
	codigoCargo int not null,
	primary key (codigoResponsableTurno),
		constraint FK_ResponsableTurno_Areas
			foreign key (codigoArea) references Areas (codigoArea),
		constraint FK_ResponsableTurno_Cargos
			foreign key (codigoCargo) references Cargos(codigoCargo)
  );
  
	insert into ResponsableTurno (codigoResponsableTurno,nombreResponsable,apellidosResponsable,telefonoPersonal,codigoArea,codigoCargo )
		values(800, 'Ramiro Daniel', 'Bustamante Mejia', 42367384, 71,20);
 
	insert into ResponsableTurno (codigoResponsableTurno,nombreResponsable,apellidosResponsable,telefonoPersonal,codigoArea,codigoCargo )
		values(810, 'David Enrique', 'Flores Camposeco', 50753091, 72,30);
  
	insert into ResponsableTurno (codigoResponsableTurno,nombreResponsable,apellidosResponsable,telefonoPersonal,codigoArea,codigoCargo )
		values(820, 'Juan Carlos', 'Castro Medina', 25638464, 73,40);
   
    insert into ResponsableTurno (codigoResponsableTurno,nombreResponsable,apellidosResponsable,telefonoPersonal,codigoArea,codigoCargo )
		values (830, 'Mynor Josue', 'Mejia Barrios', 58686258, 74, 50);
    
	insert into ResponsableTurno (codigoResponsableTurno,nombreResponsable,apellidosResponsable,telefonoPersonal,codigoArea,codigoCargo )
		values (840, 'Angel Emmanuel', 'Perez Tobias', 33865711, 75,60);
     
     create table Turno(
		codigoTurno int not null,
		fechaTurno DATE not null,
		fechaCita DATE not null,
		valorCita decimal(10.2) not null,
		codigoMedicoEspecialidad int not null,
		codigoResponsableTurno int not null,
		codigoPaciente int not null,
		primary key (codigoTurno),
			constraint FK_Turno_Medico_Especialidad
				foreign key (codigoMedicoEspecialidad) references Medico_Especialidad(codigoMedicoEspecialidad),
			constraint FK_Turno_ResponsableTurno
				foreign key (codigoResponsableTurno) references ResponsableTurno(codigoResponsableTurno),
			constraint FK_Turno_Pacientes
				foreign key (codigoPaciente) references Pacientes (codigoPaciente)
	);
    
    insert into Turno (codigoTurno,fechaTurno,fechaCita,valorCita,codigoMedicoEspecialidad,codigoResponsableTurno,codigoPaciente )
		values (400, '2019-10-08', '2019-10-02', '50.00', 3030, 800, 101);
    
    insert into Turno (codigoTurno,fechaTurno,fechaCita,valorCita,codigoMedicoEspecialidad,codigoResponsableTurno,codigoPaciente )
		values(410, '2019-08-25', '2019-08-15', '75.00', 3040, 810, 102);
    
    insert into Turno (codigoTurno,fechaTurno,fechaCita,valorCita,codigoMedicoEspecialidad,codigoResponsableTurno,codigoPaciente )
		values(420, '2019-06-30', '2019-06-14', '50.00', 3050, 820, 103);
    
    insert into Turno (codigoTurno,fechaTurno,fechaCita,valorCita,codigoMedicoEspecialidad,codigoResponsableTurno,codigoPaciente )
		values (430, '2019-01-02', '2018-12-17', '50.00', 3060,830,104);
    
    insert into Turno (codigoTurno,fechaTurno,fechaCita,valorCita,codigoMedicoEspecialidad,codigoResponsableTurno,codigoPaciente )
		values (440, '2019-07-01', '2019-06-22', '50.00', 3070, 840, 105);
 
 select *from areas;
 
  /*----------------------------------------UPDATE-----------------------------*/
 /*Medicos*/
	update Medicos set nombres = 'Armando Gabriel', apellidos = 'Benitez Contreras', horaEntrada = '2014-8-6 08.30.00', horaSalida = '2014-8-6 17.20.00', turnoMaximo = 0 where codigoMedico=2020;

 /*TelefonosMedico*/
	update TelefonosMedico set telefonoPersonal = 42512053, telefonoTrabajo = 25089675 where codigoTelefonoMedico= 234;
 
 /*Especialidades*/
	update Especialidades set nombreEspecialidad = 'Pediatra'  where codigoEspecialidad = 071;
 
 /*Horarios*/
	update Horarios set horarioInicio = '2014-10-14 06:30:00', horarioSalida = '2014-10-14:21:0:0' , lunes = 0, martes = 0, miercoles = 1, jueves = 1, viernes = 0 where codigoHorario = 1010;
 
 /*Pacientes*/
	update Pacientes set DPI = 2646146384626, apellidos = 'Morales Gutierrez', nombres = 'Carlos Martin', fechaNacimiento = '2000-09-25', edad = 20, direccion = '8va Calle 11-6 Zona 7', ocupacion = 'Estudiante', sexo = 'Masculino' where codigoPaciente = 101;

/*ContactoUrgencia*/
	update ContactoUrgencia set nombres = 'Rodrigo', apellidos = 'Morales', numeroContacto = 42587086 where codigoContactoUrgencia= 10;

/*Cargos*/
	update Cargos set nombreCargo = 'Estudiantes de medicina' where codigoCargo= 20;

/*Areas*/
	update Areas set nombreArea = 'Odontologia' where codigoArea= 72;

/*ResponsableTurno*/
	update responsableturno set nombreResponsable = 'Leonel Andres', apellidosResponsable = 'Madrid Turcios', telefonoPersonal=56746386 where codigoResponsableTurno= 800;

/*Turno*/
	update Turno set fechaTurno = '2019-10-26', fechaCita= '2019-10-14', valorCita = '75.00' where codigoTurno = 400;

/*-------------------------select-------------------------*/

/*Medicos*/
	select M.codigoMedico, M.licenciaMedica, M.nombres, M.apellidos, M. horaEntrada, M. horaSalida, M. turnoMaximo, M.sexo from Medicos M;

/*TelefonosMedico*/
	select T.codigoTelefonoMedico, T.telefonoPersonal, T.telefonoTrabajo, T. codigoMedico from TelefonosMedico T;

/*Especialidades*/
	select E.codigoEspecialidad, E. nombreEspecialidad from Especialidades E;

/*Horarios*/
	select H.codigoHorario,H. horarioInicio, H. horarioSalida, H. lunes, H. martes, H.miercoles, H.jueves,H.viernes from Horarios H;

/*Medico_Especialidad*/
	select ME.codigoMedicoEspecialidad, ME. codigoMedico, ME. codigoEspecialidad, ME.codigoHorario from Medico_Especialidad ME;

/*Pacientes*/
	select P.codigoPaciente, P.DPI, P. apellidos, P. nombres, P.fechaNacimiento, P.edad, P.direccion, P.ocupacion, P. sexo from Pacientes P;

/*ContactoUrgencia*/
	select CU.codigoContactoUrgencia, CU. nombres, CU. apellidos, CU.numeroContacto, CU.codigoPaciente from ContactoUrgencia CU;

/*Cargos*/
	select C.codigoCargo, C. nombreCargo from Cargos C;

/*Areas*/
	select A.codigoArea, A. nombreArea from Areas A;

/*ResponsableTurno*/
	select RP.codigoResponsableTurno,RP. nombreResponsable, RP.apellidosResponsable, RP.telefonoPersonal, RP.codigoArea, RP.codigoCargo from ResponsableTurno RP;

/*Turno*/
	select T.codigoTurno, T.fechaTurno, T. fechaCita, T. valorCita,T.codigoMedicoEspecialidad, T.codigoResponsableTurno, T.codigoTurno from Turno T;


/*-------------------------DELETE------------------------*/

/*Medicos*/
	delete from Medicos where codigoMedico= 2040;

/*TelefonosMedico*/
	delete from TelefonosMedico where codigoTelefonoMedico= 264;

/*Especialidades*/
	delete from Especialidades where codigoEspecialidad= 141;

/*Horarios*/
	delete from Horarios where codigoHorario = 1040;

/*Medico_Especialidad*/
	delete from Medico_Especialidad where codigoMedicoEspecialidad = 3050;

/*Pacientes*/
	delete from Pacientes where codigoPaciente = 105;

/*ContactoUrgencia*/
	delete from ContactoUrgencia where codigoContactoUrgencia = 30;

/*Cargos*/
	delete from Cargos where codigoCargo = 30;

/*Areas*/
	delete from Areas where codigoArea = 74;

/*ResponsableTurno*/
	delete from ResponsableTurno where codigoResponsableTurno = 830;

/*Turno*/
	delete from Turno where codigoTurno = 440;


/*-------------------------DROP-------------------------*/
/*TelefonosMedico*/
	drop table TelefonosMedico;

/*Turno*/
	drop table Turno;

/*ResponsableTurno*/
	drop table ResponsableTurno;

/*Medico_Especialidad*/
	drop table Medico_Especialidad;

/*contactoUrgencia*/
	drop table contactoUrgencia;

/*Medicos*/
	drop table Medicos;

/*Horarios*/
	drop table Horarios;

/*Especialidades*/
	drop table Especialidades;

/*Pacientes*/
	drop table Pacientes;

/*Areas*/
	drop table Areas;

/*Cargos*/
	drop table Cargos;






