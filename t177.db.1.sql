select * from rectangles;
select count(*) from rectangles where id NOTNULL;
select id,color,MAX(width) from rectangles;
select id,color,MAX(height) from rectangles;
select * from rectangles where width>height;
select id,width,height,(width*height) AS Area from rectangles;
select id,color,width,height,MAX(width*height) as Area from rectangles;
select id,color,width,height,MAX((x+width)*(y+height)) as Extention from rectangles;
select * FROM rectangles where color is NULL;
select color from rectangles GROUP by color;
select color,count(*) from rectangles where color not LIKE '#%' and color is not NULL group by color;
select upper(color) from rectangles where color is not NULL group by color;
SELECT course_id,length(course_name) as Length FROM courses ORDER by Length DESC limit 3;
select strftime('%Y', due_date) AS Year, count(*) as 'no.of Assignments' from assignments  where Year='2024';
select concat(course_id, ':',course_name) as Concatenation from courses;
select course_id,course_name,lab_time from courses where lab_time like 'Mon%';
select course_id,count(id) as 'No. of assignments' from assignments group by course_id order by course_id DESC;

----Bonus-----
select courses.semester, COUNT(assignments.id) as 'No. of assignments' from courses LEFT join assignments on courses.course_id=assignments.course_id where assignments.id is not NULL; 




SELECT DISTINCT SUBSTRING(course_id, 1, 4) FROM courses;
SELECT SUBSTRING(course_id, 1, 4) FROM courses;
select DISTINCT(color) FROM rectangles where color is NOT NULL;
select * from courses where length(course_id)<8;



create TABLE abc ( id integer PRIMARY key, abc_id text not null, status text not null, due_date text not null);
alter table abc rename to abc123;
Drop table abc123 ;