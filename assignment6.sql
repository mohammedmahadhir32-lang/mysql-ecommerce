CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    mark INT,
    course VARCHAR(50)
);

INSERT INTO students (id, name, subject, mark, course)
VALUES
(1, 'Arun', 'Maths', 85, 'B.Sc'),
(2, 'Priya', 'Science', 92, 'B.Sc'),
(3, 'Ravi', 'English', 45, 'B.A'),
(4, 'Sneha', 'Maths', 70, 'B.Com'),
(5, 'Karthik', 'Science', 55, 'B.Tech');

# Write subquery which should return student details whose mark should be grater than average.
select name,
       subject,
       mark
from students
where mark > (select avg(mark)as avg_marks from students);

#Write a multi row subquery which should contain students with marks > 50
select name,subject,mark from students 
where id in (select id from students where mark > 50);

