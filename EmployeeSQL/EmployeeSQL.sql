CREATE TABLE Departaments (
  dept_no VARCHAR(10) PRIMARY KEY,
  dept_name VARCHAR(40) NOT NULL
);

CREATE TABLE Titles (
  title_id VARCHAR(40) PRIMARY KEY NOT NULL,
  title VARCHAR(40) NOT NULL
 );

CREATE TABLE Employees (
  emp_no INTEGER PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR(40) NOT NULL,
  birth_date DATE,
  first_name VARCHAR(60),
  last_name VARCHAR(60),
  sex VARCHAR(10),
  hire_date DATE,
  FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
  );

CREATE TABLE Dept_Manager (
  emp_no INTEGER PRIMARY KEY,
  dept_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
 	);

CREATE TABLE Salaries (
  emp_no INTEGER PRIMARY KEY,
  salary FLOAT NOT NULL,
 	);

CREATE TABLE Dept_Emp (
  emp_no INTEGER NOT NULL,
  dept_no VARCHAR(40) NOT NULL,
	);

