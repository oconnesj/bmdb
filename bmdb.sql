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
	role 			varchar(50)		not null
	

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
	  values (101, 'The Matrix', 1999, 'R', 'The Wachowski Brothers');
insert into movie (id,Title, year, rating, Director)
	  values (201, 'The Matrix', 1999, 'R', 'The Wachowski Brothers');
insert into movie (id,Title, year, rating, Director)
	  values (301, 'The Matrix', 1999, 'R', 'The Wachowski Brothers');
insert into movie (id,Title, year, rating, Director)
	  values (401, 'The Matrix', 1999, 'R', 'The Wachowski Brothers');      
insert into movie (id,Title, year, rating, Director)
	  values (502, 'Back to the Future', 1985, 'PG', 'Robert Zemeckis'); 
insert into movie (id,Title, year, rating, Director)
	  values (602, 'Back to the Future', 1985, 'PG', 'Robert Zemeckis'); 
insert into movie (id,Title, year, rating, Director)
	  values (702, 'Back to the Future', 1985, 'PG', 'Robert Zemeckis'); 
insert into movie (id,Title, year, rating, Director)
	  values (802, 'Back to the Future', 1985, 'PG', 'Robert Zemeckis'); 
    
      

-- Credit Inserts --   
insert into credit (id, actorID, movieID, role)
	values(1,101,1, 'Neo');
insert into credit (id, actorID, movieID, role)
	values(1,201,2, 'Morpheus');
insert into credit (id, actorID, movieID, role)
	values(1,301,3, 'Trinity');
insert into credit (id, actorID, movieID, role)
	values(1,401,4, 'Agent Smith');
insert into credit (id, actorID, movieID, role)
	values(2,502,5, 'Marty McFly');
insert into credit (id, actorID, movieID, role)
	values(2,602,6, 'Dr. Emmett Brown');
insert into credit (id, actorID, movieID, role)
	values(2,702,7, 'Lorraine Baines');
insert into credit (id, actorID, movieID, role)
	values(2,802,8, 'George McFly');  
    
-- Actor Inserts --

insert into actor (id, firstName,	lastName, gender, birthDate)
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
    
-- join  ---
  
    