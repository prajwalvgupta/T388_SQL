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

-- W H G O 
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


