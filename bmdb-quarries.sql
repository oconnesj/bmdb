select * from movie;
select * from credit;
select * from actor;

select *
from movie
join actor
	on movie.id = actor.id
join credit
on actor.id = credit.ID;    


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