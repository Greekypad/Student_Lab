-- use student_lab;
-- Step2

-- select * from student;
-- insert into student values('3522101','Chader','Lee','computer science','2024');
-- insert into student values('2522101','William','K','Art','2022');
-- insert into student values('1199301','john','F','Biology','2021');
-- insert into student values('1090021','Leon','K','sociology','2020');
-- insert into student values('1199201','Henery','G','Music','2021');
-- select * from student;

-- select * from instructor;
-- insert into instructor values('101','Dr.White' ,'computer science');
-- insert into instructor values('102','Dr.King' ,'Music');
-- insert into instructor values('103','Dr.Sanchez' ,'Art');
-- select * from instructor;

-- select * from course;
-- insert into course values('301','Data Structure 1' ,'101');
-- insert into course values('302','Data Structure 2' ,'101');
-- insert into course values('112','Piano 1' ,'102');
-- insert into course values('110','painting 1' ,'103');
-- select * from course;

-- select * from enrollment;
-- insert into enrollment values('231','3522101' ,'301','A-');
-- insert into enrollment values('232','3522101' ,'302','A-');
-- insert into enrollment values('321','2522101' ,'110','B+');
-- insert into enrollment values('322','3522101' ,'110','A');
-- insert into enrollment values('233','1199301' ,'301','C+');
-- insert into enrollment values('152','2522101' ,'110','A+');
-- select * from enrollment;

-- Step3

-- update student set major = 'Data science' where student_id = '3522101';
-- Select * from student;
-- update course set instructor_id = '102' where course_id = '301';
-- Select * from course;
-- update enrollment set grade = 'A+' where enrollment_id = '231';
-- Select * from enrollment;
-- delete from enrollment where enrollment_id ='232';
-- Select * from enrollment;
-- delete from student where student_id = '3522101';
-- Select * from student; -- wrong

-- right steps for delete me 
-- delete from enrollment where student_id = '3522101';
-- delete from student where student_id = '3522101';
-- select * from student; 

-- Step4

-- select * from student order by LName ASC;
-- select * from course where instructor_id = '102';
-- select s.FName, s.LName,c.course_title 
-- from student s 
-- join enrollment e on s.student_id = e.student_id
-- join course c on e.course_id = c.course_id order by s.FName;
-- select s.FName, s.LName,e.grade
-- from student s
-- join enrollment e on s.student_id = e.student_id
-- where e.course_id = '301' order by s.FName ,s.LName;
-- select c.course_id,c.course_title ,s.FName,s.LName
-- from course c
-- join enrollment e on c.course_id =e.course_id
-- join student s on e.student_id = s.student_id
-- order by c.course_id, c.course_title, s.FName , s.LName ASC;
