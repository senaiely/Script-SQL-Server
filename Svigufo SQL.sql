-- Criar banco de dados
create database Senai_Svigufo_Tarde

-- Mudar p banco de dados
use Senai_Svigufo_Tarde

-- Criar tabela
create table Tipos_eventos (
-- Nome da coluna / tipo de dados q sera armazenado / auto-incremento/ identificar chave
	id int identity primary key
-- (qntdd de caracter) / não é nullo / exclusivo	
	,titulo varchar (100) not null unique 
)

create table Instituições (
	Id int identity primary key	
	,Razão_social varchar (255) not null unique
	,Nome varchar (255) null unique
	,Cnpj char (14) not null unique
	,Logradouro varchar (255) not null 
	,Cep char (8) not null
	,Uf char (2) not null
	,Cidade varchar (255)  
)

create table Eventos (
	Id int identity primary key
	,Título varchar(255) not null 
	,Descricao text
	,Data_evento datetime not null
	-- (1) publico, (0) privado. padrão é 0
	,Restricao bit not null default(1)
	,Id_tipo_evento int 
	,Id_instituicoes int
	--Criar chave estrangeira e define que o campo esta relacionado a tabela(campo)
	,foreign key (id_tipo_evento) references Tipos_eventos(id)
	,foreign key (Id_instituicoes) references Instituições(id)
)

create table Usuario(
	Id int identity primary key
	,Nome varchar (255) not null
	,Email varchar (255) not null unique
	,Senha varchar (255) not null
	,Tipo_usuario varchar (255) not null
)

create table convites(
	Id_Convite int identity primary key
	,Id_Usuario int foreign key references Usuario(id)
	,Id_Eventos int foreign key references Eventos (id)
	,Situacao char(1)
)
