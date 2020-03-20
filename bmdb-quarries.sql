select * from movie;
select * from credit;
select * from actor;

select firstName as 'First Name', lastName as 'Last Name', gender as 'Gender' , role as 'Role' , Title, year as 'Year', rating as 'Rating', Director
from actor
join credit
	on actor.ID = credit.movieID
join movie
	on credit.actorID = movie.ID;


/*
-- 3 table join 
select firstName, lastName, studentID, subject, quarter, credits, grade
from student s
join enrolled e 
 on e.studentID = s.id
join course c
 on c.id = e.courseID
 order by firstName;
 
 */