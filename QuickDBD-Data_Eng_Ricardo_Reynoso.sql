﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/alrEz0
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
-- Create the tables for all the CSV
-- Use the information to create a table schema for each of the six CSV files.
-- Remember to specify data types, primary keys, foreign keys, and other constraints.

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [department] (
    [dept_no] VARCHAR  NOT NULL ,
    [dept_name] VARCHAR  NOT NULL 
)

CREATE TABLE [dept_emp] (
    [emp_no] INT  NOT NULL ,
    [dept_no] VARCHAR  NOT NULL ,
    [from_date] DATE  NOT NULL ,
    [to_date] DATE  NOT NULL 
)

CREATE TABLE [dept_manager] (
    [dept_no] VARCHAR  NOT NULL ,
    [emp_no] INT  NOT NULL ,
    [from_date] DATE  NOT NULL ,
    [to_date] DATE  NOT NULL 
)

CREATE TABLE [employees] (
    [emp_no] INT  NOT NULL ,
    [birth_date] DATE  NOT NULL ,
    [first_name] VARCHAR  NOT NULL ,
    [last_name] VARCHAR  NOT NULL ,
    [gender] VARCHAR  NOT NULL ,
    [hire_date] DATE  NOT NULL 
)

CREATE TABLE [salaries] (
    [emp_no] INT  NOT NULL ,
    [salary] INT  NOT NULL ,
    [from_date] DATE  NOT NULL ,
    [to_date] DATE  NOT NULL 
)

CREATE TABLE [titles] (
    [emp_no] INT  NOT NULL ,
    [title] VARCHAR  NOT NULL ,
    [from_date] DATE  NOT NULL ,
    [to_date] DATE  NOT NULL 
)

ALTER TABLE [dept_emp] WITH CHECK ADD CONSTRAINT [FK_dept_emp_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employees] ([emp_no])

ALTER TABLE [dept_emp] CHECK CONSTRAINT [FK_dept_emp_emp_no]

ALTER TABLE [dept_emp] WITH CHECK ADD CONSTRAINT [FK_dept_emp_dept_no] FOREIGN KEY([dept_no])
REFERENCES [department] ([dept_no])

ALTER TABLE [dept_emp] CHECK CONSTRAINT [FK_dept_emp_dept_no]

ALTER TABLE [dept_manager] WITH CHECK ADD CONSTRAINT [FK_dept_manager_dept_no] FOREIGN KEY([dept_no])
REFERENCES [department] ([dept_no])

ALTER TABLE [dept_manager] CHECK CONSTRAINT [FK_dept_manager_dept_no]

ALTER TABLE [dept_manager] WITH CHECK ADD CONSTRAINT [FK_dept_manager_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employees] ([emp_no])

ALTER TABLE [dept_manager] CHECK CONSTRAINT [FK_dept_manager_emp_no]

ALTER TABLE [salaries] WITH CHECK ADD CONSTRAINT [FK_salaries_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employees] ([emp_no])

ALTER TABLE [salaries] CHECK CONSTRAINT [FK_salaries_emp_no]

ALTER TABLE [titles] WITH CHECK ADD CONSTRAINT [FK_titles_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employees] ([emp_no])

ALTER TABLE [titles] CHECK CONSTRAINT [FK_titles_emp_no]

COMMIT TRANSACTION QUICKDBD