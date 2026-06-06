create table Students2(
  std_id int auto_increment primary key,
  std_name varchar(50),
  course varchar (50)
  );
  
create table College2(
  college_id int,
  college_name varchar(50),
  std_id int,
  FOREIGN KEY (std_id)
    REFERENCES Students2(std_id)
   ); 
   
INSERT INTO Students2
VALUES
(1, 'Arun', 'BCA'),
(2, 'Priya', 'BSc'),
(3, 'Rahul', 'BCom'),
(4, 'Sneha', 'BBA');

INSERT INTO College2
VALUES
(101, 'ABC College', 1),
(102, 'XYZ College', 2),
(103, 'PQR College', 3);

SELECT * FROM College2;

select s.std_id,s.std_name,s.course,c.college_id,c.college_name
from Students2 s
left join College2 c
on s.std_id = c.std_id 
 
union 

select s.std_id,s.std_name,s.course,c.college_id,c.college_name
from Students2 s
right join College2 c
on s.std_id = c.std_id;

select lower(substring('HELLO WORLD',7,5)) as output;


