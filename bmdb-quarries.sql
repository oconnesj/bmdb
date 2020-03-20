select * from movie;
select * from credit;
select * from actor;

select concat(firstName,' ',lastName) as Name, Role, concat(title, ' ', year,' ', rating) as Movie, Director
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