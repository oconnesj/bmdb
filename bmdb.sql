-- Drop and Create the Database, DDL

drop database if exists bmdb;
create database bmdb;
use bmdb;

-- DDL - Create Tables
create table movie (
	id 				int 			primary key auto_increment,
	Title			varchar(100) 	not null,
	year			int 			not null,
	rating			varchar(5) 		not null,		
	Director		varchar(50) 	not null
	);

create table credit (
	id 				int 			not null,
	actorID			int				not null,
	movieID 		int				primary key auto_increment,
	role 			varchar(50)		not null,
	FOREIGN KEY (actorID) REFERENCES movie(id)

	);


create table actor (
	id 				int 			primary key auto_increment,
	firstName		varchar(25) 	not null,
	lastName		varchar(25) 	not null,
	gender			varchar(6)		not null,
    birthdate		date			not null,
    FOREIGN KEY (id) REFERENCES credit(movieID)
    );
    
-- Movie Inserts --
insert into movie (id,Title, year, rating, Director)
	  values (1, 'The Matrix', 1999, 'R', 'The Wachowski Brothers');
insert into movie (id,Title, year, rating, Director)
	  values (2, 'Back to the Future', 1985, 'PG', 'Robert Zemeckis');  

-- Credit Inserts --   
insert into credit (id, actorID, movieID, role)
	values(1,1,1, 'Neo');
insert into credit (id, actorID, movieID, role)
	values(1,1,2, 'Morpheus');
insert into credit (id, actorID, movieID, role)
	values(1,1,3, 'Trinity');
insert into credit (id, actorID, movieID, role)
	values(1,1,4, 'Agent Smith');
insert into credit (id, actorID, movieID, role)
	values(2,2,5, 'Marty McFly');
insert into credit (id, actorID, movieID, role)
	values(2,2,6, 'Dr. Emmett Brown');
insert into credit (id, actorID, movieID, role)
	values(2,2,7, 'Lorraine Baines');
insert into credit (id, actorID, movieID, role)
	values(2,2,8, 'George McFly');    