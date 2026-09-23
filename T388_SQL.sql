create database T388_DB;
use T388_DB;
select database();

CREATE TABLE Employee (
  EmployeeId INT PRIMARY KEY,
  FullName VARCHAR(45) NOT NULL,
  Department VARCHAR(45) NOT NULL,
  Salary float NOT NULL,
  Gender VARCHAR(45) NOT NULL,
  Age INT NOT NULL
);
select * from Employee;
insert into Employee values
(2005,"Prajwal","IT",55000,"Male",27);

delete from Employee;
use T388_DB;
delete from Employee;

INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

select * from Employee;

-- 07-09-2026
use T388_DB;
show tables;
select * from Employee;
delete from Employee where Gender ="Male";
delete from employee where age >25;

INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

truncate table employee;

INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

alter table Employee
add Location varchar(10);

alter table Employee
add Bonus float after salary;

alter table Employee
add Title varchar(5) First;

select * from Employee;
desc employee; -- This is for comment

alter table Employee
modify FullName varchar(35);

alter table Employee
change column Location Address varchar(36);

update employee set address ="Thane";

update employee set address ="Dombivali"
where department = "IT";

update employee set Title ="Mr." 
where Gender ="Male";
update employee set Title ="Mrs." 
where Gender ="Female";

update employee set Bonus = salary*0.05;

-- 09-09-2026
use T388_DB;
select * from Employee;

create table Kisan_Info
(ID  INT unique not null,
NAME varchar(50) unique not null,
AGE int check (Age>=18),
EMAIL_ID varchar(45) default "dummy@gmail.com"
);
desc Kisan_Info;

insert into Kisan_Info values
(103,"Vikas",21,default);

alter table Kisan_Info modify age int check (age>=18);

insert into Kisan_Info(ID,name,age) values
(104,"Prajwal",27);

select * from Kisan_Info;

select distinct FullName from employee;

select * from employee
where department ="IT" OR department ="Finance";
select * from employee
where department in ("IT","HR");

-- 21-09-2026
use T388_DB;
select * from Employee;

-- ORDER BY CLAUSE
select * from employee order by Fullname;
select * from employee order by age desc;
select * from employee order by age asc;
select * from employee order by department;
select * from employee where gender ="Male" order by fullname;

select * from Employee limit 3;

-- W G H O 
-- WHERE, GROUP BY -[HAVING], ORDER BY

-- Group By Clause

select department from Employee group by department;
select department, count(EmployeeID) from Employee group by department;
select Gender, count(EmployeeID) from Employee group by Gender;
select department, sum(salary) from Employee group by department;
select department, max(salary) from Employee group by department;
select department, min(salary) from Employee group by department;
select department, avg(salary) from Employee group by department;
select department, avg(salary), sum(salary) from Employee group by department;
select department, avg(salary) as Avg_Salary, sum(salary) as Total_Salary from Employee group by department;

select department,count(salary) from Employee group by department;
select department,count(gender) from Employee group by department;
select department,count(*) from Employee group by department;

-- Having Clause (is always used along with group by clause)

select department,count(*) from Employee group by department having sum(salary) >150000;
select department,count(*) from Employee group by department having avg(age) <27;
select department,avg(age),count(*) from Employee group by department;



CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME
);
    
    INSERT INTO Projects VALUES 
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select * from projects;
select *,datediff(enddate, startdate) as Duration from projects;

-- now() [shows you date & time]
select Now();

select * from projects where datediff(enddate, startdate)=45;

alter table projects add Duration Int;
update projects set duration = datediff(enddate,startdate);

select duration,count(*) from projects group by duration;
select duration,count(*) from projects group by duration having count(*)>=2;
select duration,count(*) from projects group by duration having count(*)>=2 limit 3;

select duration,count(*) from projects 
where duration>=20 
group by duration 
having count(*)>=2
order by duration desc
;

select * from employee limit 3,5;

-- 22-09-2026
use T388_DB;

-- distinct
select distinct department from employee;
select distinct gender from employee;
select distinct age from employee;

-- is null or not null
select * from projects;
select * from projects where EmployeeId is null;
select * from projects where EmployeeId is not null;

update projects set employeeid = 1003 where ProjectId =6;


-- IN, BETWEEN & LIKE (LOGICAL OPERATORS)
-- BETWEEN
select * from employee where age between 25 and 27;
select * from employee where employeeid between 1003 and 1007;

-- IN
select * from employee where employeeid in (1003, 1005, 1007);
select * from employee where employeeid =1003
or employeeid =1005
or employeeid =1007;
select * from employee where age in (23, 28);
select * from employee where age in (23, 28) and department ="IT";
select * from employee where age in (23, 28) and department ="IT" and employeeid in (1008,1001);

-- LIKE 
-- % means "0" or any no. of characters
select * from ssimple;
select * from ssimple where fullname like "a%";
select * from ssimple where fullname like "_u%";
select * from ssimple where fullname like "%t%";
select * from ssimple where fullname like "___e%";
select * from ssimple where fullname like "a_%";
select * from ssimple where fullname like "a%t";
select * from ssimple where fullname not like "a%t";

-- Aggregate function
select avg(salary) from employee;
select sum(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;
select count(*) from employee;
select count(*) as Total_Emp, 
avg(salary) as Average, 
sum(salary) as Total_Salary 
from employee;

-- Math Function (abs is absolute value the answer will always be in positive if the no. is negative then too)
select abs(+35);
select abs(-35);    
select abs(300-200);
select abs(300-800);
select abs(6*(-7));

select (datediff(startdate, enddate)) from projects;
select abs(datediff(startdate, enddate)) from projects;

select mod (12,7);

select ceil (33.8);
select floor (33.8);

select truncate (123456.9874563,3);
select truncate (123456.9874563,0);
select truncate (123456.9874563,-1);


-- 23-09-2026
use T388_DB;

-- EXPONENTIAL
select exp(5); 
select exp(2); 

-- POWER
select power (2,4);
select pow(2,3);

-- Square
select sqrt(144);
select sqrt(81);

-- CONCAT
select concat("Good"," ","Morning") as Remarks;

select *,concat(fullname,"@itvedant.com")as code from employee;


-- LOWER & UPPER
select *,lower(fullname) as newname from employee;
select *,upper(fullname) as capitalname from employee;
select *,lower(fullname) as newname, upper(fullname) as capitalname from employee;

select * from employee;
alter table employee add Email varchar(50);

update employee set Email = concat(fullname,"@gmail.com");

-- REPLACE
select replace("Hello Everyone, Good Morning","Morning","Night")as Statement;
select replace("Hello Everyone, Good Night","Night","Morning")as Statement;

select fullname, replace(fullname,"Jones","Patil")as changed from employee;
select fullname, replace(fullname,"Mohanty","Gupta")as changed from employee;

-- REVERSE
select fullname, replace(fullname,"Mohanty","Gupta")as changed, reverse(fullname) from employee;

-- LENGTH
select fullname, length(fullname) from employee;
select salary, length(salary) from employee;
select address, length(address) from employee;

-- SUBSTRING
select substring("Maharashtra",1,5);
select substring("Maharashtra",5,4);

-- LTRIM, RTRIM & TRIM



-- SUB QUERIES
select age from employee where employeeid =1002;
select age from employee where fullname ="Mary Smith";

select * from employee 
where age =(select age from employee where fullname ="Mary Smith");

select * from employee
where salary=(select salary from employee where fullname ="John Doe");

select * from employee
where department=(select department from employee where fullname ="John Doe");

select max(salary) from employee;
-- to show 2nd highest salary
select max(salary) from employee 
where salary <(select max(salary) from employee);
-- to show 3rd highest salary
select max(salary) from employee
where salary <(select max(salary) from employee 
where salary <(select max(salary) from employee));
