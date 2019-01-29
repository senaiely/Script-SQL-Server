create database Bugmusic_tarde

create table Generos (
	Id int identity primary key	
	,Nome varchar (255) not null 
)

create table Bandas (
	Id int identity primary key	
	,Nome varchar (255) not null 
	,Id_genero int foreign key references Generos(id) 
)

create table Cantores (
	Id int identity primary key
	,Nome varchar (255) not null
)

create table Bandas_Cantores(
	Id_cantor int foreign key references Cantores(id) 
	,Id_Banda int foreign key references Bandas(id)
)

create table Albuns (
	Id int identity primary key
	,Nome varchar (255) not null
	,Id_banda int foreign key references Bandas (id)
)

create table Musicas (
	Id int identity primary key
	,Nome varchar (255) not null
	,Id_Albuns int foreign key references Albuns (id) 
)