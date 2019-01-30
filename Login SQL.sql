--DDL (Data Definition Language)

create database senai_ddl_revisao_tarde

use senai_ddl_revisao_tarde

create table usuarios (
	id int identity primary key
	,email varchar (255) not null unique
	,senha varchar (255) not null 
)

--Alterar tabela
alter table usuarios
	add nome varchar (200) not null

alter table usuarios
	add ativos bit 

--Deletar coluna
alter table usuarios
	drop column nome

--Deletar tabela
drop table usuarios