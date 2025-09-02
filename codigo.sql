create database entregable_1;

use entregable_1;

create table estudiante(
id_estudiante int not null unique auto_increment,
nombre varchar(20),
apellido varchar(20),
email varchar(20),
primary key(id_estudiante)
);

create table instructor(
id_instructor int not null unique auto_increment,
nombre varchar(20),
apellido varchar(20),
email varchar(20),
primary key(id_instructor)
);

create table curso(
id_curso int not null unique auto_increment,
titulo varchar(20),
descripcion varchar(45),
fecha_inicio date,
duracion int,
instructor_id_instructor int,
primary key(id_curso),
constraint fk_instructor foreign key (instructor_id_instructor) references instructor(id_instructor)
);

create table leccion(
id_leccion int not null unique auto_increment,
titulo varchar(20),
contenido varchar(20),
curso_id_curso int,
primary key(id_leccion),
constraint fk_curso foreign key (curso_id_curso) references curso(id_curso)
);

create table inscripcion(
id_inscripcion int not null unique auto_increment,
fecha_inscripcion date,
estudiante_id_estudiante int,
curso_id_curso int,
primary key(id_inscripcion),
constraint fk_estudiante foreign key (estudiante_id_estudiante) references estudiante(id_estudiante),
constraint fk_curso_1 foreign key (curso_id_curso) references curso(id_curso)
);