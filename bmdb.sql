-- Drop and Create the Database, DDL

drop database if exists bmdb;
create database bmdb;
use bmdb;

-- DDL - Create Tables
create table movie (
	id 				int 			primary key auto_increment,
	ssnLastFour 	int 			not null,
	firstName 		varchar(25) 	not null,
	lastName 		varchar(25) 	not null,
	middleInitial 	varchar(1), 		
	address			varchar(50) 	not null,
	city 			varchar(40) 	not null,
	state 			varchar(2) 		not null,
	zip 			varchar(5) 		not null,
	birthday 		Date 			not null,
	primaryPhone 	varchar(12) 	not null,
	secondaryPhone 	varchar(12),
	email 			varchar(50) 	not null
	);

create table credit (
	id 				int 			not null primary key auto_increment,
	subject 		varchar(50)		not null,
	name 			varchar(20)		not null unique,
	credits 		int 			not null,
	quarter 		int 			not null
	);


create table enrolled (
	id 				int 			not null primary key auto_increment,
	studentID		int 			not null,
	courseID		int 			not null,
	grade			varchar(1),
	FOREIGN KEY (studentID) REFERENCES student(id),
	FOREIGN KEY (courseID) REFERENCES course(id),
    CONSTRAINT std_course unique (studentID, courseID)
    );