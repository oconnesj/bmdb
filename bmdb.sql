-- Drop and Create the Database, DDL

drop database if exists bmdb;
create database bmdb;
use bmdb;

-- DDL - Create Tables
create table movie (
	id 				int 			primary key,
	Title			varchar(100) 	not null,
	year			int 			not null,
	rating			varchar(5) 		not null,		
	Director		varchar(50) 	not null
	);

create table credit (
	id 				int 			not null,
	actorID			int				not null,
	movieID 		int				primary key,
	role 			varchar(50)		not null,
	FOREIGN KEY (actorID) REFERENCES movie(id)

	);


create table actor (
	id 				int 			primary key,
	firstName		varchar(25) 	not null,
	lastName		varchar(25) 	not null,
	gender			varchar(6)		not null,
    birthdate		date			not null,
    FOREIGN KEY (id) REFERENCES credit(movieID)
    );
    
    
    