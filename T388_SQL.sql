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
