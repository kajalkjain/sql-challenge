-- Create a new table
--DROP TABLE departments,dept_emp,dept_manager,employees,salaries, titles;
--DROP TABLE dept_manager
--SET datestyle = 'ISO, MDY';

CREATE TABLE departments (
  dept_no VARCHAR(30) primary key ,
   dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
  title_id VARCHAR(30) primary key ,
  title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
  emp_no INTEGER PRIMARY KEY,
  emp_title_id VARCHAR(30) NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
  birth_date DATE,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(1) NOT NULL,
  hire_date Date
);

CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)	
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(30) NOT NULL,
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  salary float NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
  );

