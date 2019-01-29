create database CPet

create table clinicas (
	id int identity primary key
	,nome varchar (255) not null 	
	,endereco varchar (255) not null
)

create table tipo_pet (
	id int identity primary key
	,tipo varchar (255) not null
)

create table racas (
	id int identity primary key
	,raca varchar (255) not null
	,id_tipopet int foreign key references tipo_pet (id)
)

create table donos (
	id int identity primary key 
	,nome varchar (255) not null 
)

create table pets (
	id int identity primary key
	,nome varchar (255) not null
	,data_nascimento date
	,id_raca int foreign key references racas (id)
	,id_dono int foreign key references donos (id)
)


create table veterinarios (
	id int identity primary key
	,crv int not null
	,nome varchar (255) not null
	,id_clinica int foreign key references clinicas (id)
)

create table atendimento (
	id int identity primary key
	,id_pet int foreign key references pets (id)
	,id_vet int foreign key references veterinarios (id)
	,descricao text not null
	,data_atendimento date
)