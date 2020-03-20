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
	id 				int 			not null auto_increment,
	actorID			int				not null,
	movieID 		int				primary key,
	role 			varchar(50)		not null
	);


create table actor (
	id 				int 			not null primary key auto_increment,
	studentID		int 			not null,
	courseID		int 			not null,
	grade			varchar(1),
	FOREIGN KEY (studentID) REFERENCES student(id),
	FOREIGN KEY (courseID) REFERENCES course(id),
    CONSTRAINT std_course unique (studentID, courseID)
    );