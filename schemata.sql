CREATE TABLE departments (
    dept_no CHAR(255) PRIMARY KEY,
    dept_name VARCHAR(255)
);

CREATE TABLE employees (
    emp_no INT,
    dept_no CHAR(255),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE managers (
	dept_no CHAR(255), 
    emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE emp_detail (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT
);

CREATE TABLE titles(
	title_id CHAR(255) PRIMARY KEY,
	title VARCHAR(255)
)

