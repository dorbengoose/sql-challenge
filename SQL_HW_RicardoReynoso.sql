

--SQL HOMEWORK 
-- RICARDO REYNOSO RAMOS 


-- 1. CREATE TABLE EMPLOYEES

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no)
	
);
	
--2. CREATE TABLE DEPARTMENTS

CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);
-- 3. CREATE TABLE DEPARTMENT & EMPLOYEE NUMBER

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

-- 2.1 CREATE FOREIGN KEYS :
	-- A.  EMPLOYEE NUMBER

ALTER TABLE dept_emp 
ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

	-- B.  DEPARTMENT NUMBER

ALTER TABLE dept_emp 
ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

-- 3 CREATE DEPARTMENT MANAGER TABLE:

CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

-- 3.1 CREATE FOREIGN KEYS :
	-- A.  DEPARTMENT ID NUMBER

ALTER TABLE dept_manager 
ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

-- B.  EMPLOYEE ID NUMBER

ALTER TABLE dept_manager 
ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);


-- 4. CREATE SALARIES TABLE:

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

-- 4.1 CREATE FOREIGN KEYS :
	-- A.  SALARIES BY EMPLOYEE ID NUMBER

ALTER TABLE salaries 
ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

-- 5. TITLES TABLE:

CREATE TABLE titles (
    emp_no INT   NOT NULL,
    title VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    dept_empto_date DATE   NOT NULL
);

-- 5.1 CREATE FOREIGN KEYS:
	--A TITLES AND EMPLOYEE ID NUMBER

ALTER TABLE titles 
ADD CONSTRAINT fk_titles_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);


------- END OF CODING-----------------------------------------