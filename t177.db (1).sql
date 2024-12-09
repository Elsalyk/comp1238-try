SELECT concat(course_name, '',' - ',semester,'' ) AS name_sem from courses;
select course_id,course_name,lab_time from courses where lab_time like 'Fri%';
SELECT course_id,title,status,due_date FROM assignments WHERE due_date > '2024-11-24' order by due_date;
SELECT status,count(*) as total FROM assignments group by status;
select length(course_name) as length,course_name,course_id from courses ORDER by length DESC;
select course_id,upper(course_name) from courses;
SELECT course_id,title,status,due_date FROM assignments WHERE due_date like '%-09-%';
SELECT course_id,title,status,due_date FROM assignments WHERE due_date is NULL;


SELECT courses.course_id,courses.course_name,COUNT(assignments.status) as 'Total no. of Assignments' from courses LEFT join assignments on courses.course_id=assignments.course_id group by courses.course_id ORDER by courses.course_id;









Comment: "I think it's the most challenging"


SELECT courses.course_id,courses.course_name,COUNT(assignments.status) as 'Total no. of Assignments' from courses 
LEFT join assignments on courses.course_id=assignments.course_id 
where assignments.id is NULL group by courses.course_id ORDER by courses.course_id;

