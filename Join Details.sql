create database practice_database;
use practice_database;

drop table Employee;
drop table Dept;
drop table Manager;
drop table Family;
create table Family
(
	member_id varchar(30) not null primary key,
    name varchar(30),
    age int(10),
    parent_id varchar(30)
);


insert into Family
(member_id, name, age, parent_id)
values
('F1', 'David', 4, 'F5'),
('F2', 'Carol', 10, 'F5'),
('F3', 'Micheal', 12,  'F5'),
('F4', 'Johnson', 36, ''),
('F5', 'Maryam',40, 'F6'),
('F6', 'Stewart', 70,  ''),
('F7', 'Rohan', 6, 'F4'),
('F8', 'Asha', 8, 'F4');

create table Employee 
(
	emp_id varchar(30) not null primary key,
    emp_name varchar(50),
    salary int(20),
    dept_id varchar(30),
    manager_id varchar(30)
);


select * from Employee;
select * from Dept;
select * from Manager;
select * from Project;

insert into Employee
(emp_id, emp_name, salary, dept_id, manager_id)
values
('E1', 'Rahul', 15000, 'D1', 'M1'),
('E2', 'Manoj', 15000, 'D1', 'M1'),
('E3', 'James', 55000, 'D2', 'M2'),
('E4', 'Micheal', 25000, 'D2', 'M2'),
('E5', 'Ali', 20000, 'D10', 'M3'),
('E6', 'Robin', 35000, 'D10', 'M3');






create table Dept
(
	dept_id varchar(30) not null primary key,
    dept_name varchar(50)
);

insert into Dept
(dept_id, dept_name)
values
('D1', 'IT'),
('D2', 'HR'),
('D3', 'Finance'),
('D4', 'Admin');

create table Manager
(
	manager_id varchar(30) not null primary key,
    manager_name varchar(50),
    dept_id varchar(30)
);

insert into Manager
(manager_id, manager_name, dept_id)
values
('M1', 'Prem', 'D3'),
('M2', 'Shripadh', 'D4'),
('M3', 'Nick', 'D1'),
('M4', 'Corry', 'D1');


create table Project
(
	project_id varchar(30),
    project_name varchar(50),
    team_member_id varchar(30)
);

insert into Project
(project_id, project_name, team_member_id)
values
('P1', 'Data Migration', 'E1'),
('P1', 'Data Migration', 'E2'),
('P1', 'Data Migration', 'M3'),
('P2', 'ETL Tool', 'E1'),
('P2', 'ETL Tool', 'M4');
