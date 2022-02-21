DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE company_emp (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    title_id INT NOT NULL,
    FOREIGN KEY (title_id)
    REFERENCES emp_title(title_id),
    manager_id
);

CREATE TABLE emp_role (
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    -- FOREIGN KEY (id)
    -- REFERENCES company_emp(id)
)

CREATE TABLE department (
    id INT AUTO_INCREMENT NOT NULL,
    dept_name VARCHAR(30) NOT NULL
)


-- This is to be able to change the table called "company_emp"
ALTER TABLE company_emp MODIFY id INT NOT NULL; 
COMMIT;

-- This is to be able to change the table called "emp_role"
ALTER TABLE emp_role MODIFY id INT NOT NULL; 
COMMIT;

-- This is to be able to change the table called "department"
ALTER TABLE department MODIFY id INT NOT NULL; 
COMMIT;