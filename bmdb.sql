-- Drop and Create the Database, DDL

drop database if exists bmdb;
create database bmdb;
use bmdb;

-- DDL - Create Tables
create table movie (
	ID 				int 			primary key auto_increment,
	Title			varchar(100) 	not null,
	year			int 			not null,
	rating			varchar(5) 		not null,		
	Director		varchar(50) 	not null
	);


create table actor (
	ID 				int 			primary key auto_increment,
	firstName		varchar(25) 	not null,
	lastName		varchar(25) 	not null,
	gender			varchar(6)		not null,
    birthdate		date			not null
    );
    
  create table credit (
	ID 				int 			primary key auto_increment,
	actorID			int				not null,
	movieID 		int				not null,
	role 			varchar(50)		not null,
	foreign key (actorID) references actor(ID),
	foreign key (movieID) references movie(ID),
    constraint act_mov unique (actorID, movieID)
    );

	

  
    
-- Movie Inserts --
insert into movie (ID,Title, year, rating, Director)
	  values (1, 'The Matrix', 1999, 'R', 'The Wachowski Brothers');
insert into movie (id,Title, year, rating, Director)
	  values (2, 'Back to the Future', 1985, 'PG', 'Robert Zemeckis'); 
    
      


-- Actor Inserts --

insert into actor (ID, firstName,	lastName, gender, birthDate)
	values(1, 'Keanu', 'Reeves', 'Male', '1964-09-02');
insert into actor (id, firstName,	lastName, gender, birthDate)
	values(2, 'Laurence', 'Fishburne', 'Male', '1961-07-30');
insert into actor (id, firstName,	lastName, gender, birthDate)
	values(3, 'Carrie-Anne', 'Moss', 'Female', '1967-08-21');
insert into actor (id, firstName,	lastName, gender, birthDate)
	values(4, 'Hugo', 'Weaving', 'Male', '1960-04-04');
insert into actor (id, firstName,	lastName, gender, birthDate)
	values(5, 'Michael J.', 'Fox', 'Male', '1961-06-09');
insert into actor (id, firstName,	lastName, gender, birthDate)
	values(6, 'Christopher', 'Llyod', 'Male', '1938-10-22');
insert into actor (id, firstName,	lastName, gender, birthDate)
	values(7, 'Lea', 'Thompson', 'Male', '1961-05-31');
insert into actor (id, firstName,	lastName, gender, birthDate)
	values(8, 'Crispin', 'Glover', 'Male', '1964-04-20');    
    
-- Credit Inserts --   
insert into credit (ID, actorID, movieID, role)
	values(1,1,1, 'Neo');
insert into credit (id, actorID, movieID, role)
	values(2,2,1, 'Morpheus');
insert into credit (id, actorID, movieID, role)
	values(3,3,1, 'Trinity');
insert into credit (id, actorID, movieID, role)
	values(4,4,1, 'Agent Smith');
insert into credit (id, actorID, movieID, role)
	values(5,5,2, 'Marty McFly');
insert into credit (id, actorID, movieID, role)
	values(6,6,2, 'Dr. Emmett Brown');
insert into credit (id, actorID, movieID, role)
	values(7,7,2, 'Lorraine Baines');
insert into credit (id, actorID, movieID, role)
	values(8,8,2, 'George McFly');  
        
    
-- join  ---
  
    