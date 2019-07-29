DROP TABLE Dept_Employees;

create table Employees (
	emp_no int not null,
	birth_date date,
	first_name varchar(20),
	last_name varchar(20),
	gender varchar(2),
	hire_date date,
	primary key (emp_no));


create table Departments (
	dept_no varchar(10) not null, 
	dept_name varchar(50) not null,
	primary key (dept_no));
	

create table Dept_Employees (
	emp_no int not null,
	dept_no varchar(10) not null,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no));
	

create table Dept_Managers (
	dept_no varchar(10) not null,
	emp_no int not null,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no));


create table Salaries (
	emp_no int not null,
	salary int,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no));
	

create table Titles (
	emp_no int not null,
	title varchar(50),
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no));
	
	
select * from Employees
select * from Departments
select * from Dept_Employees
select * from Dept_Managers
select * from Salaries
select * from Titles

