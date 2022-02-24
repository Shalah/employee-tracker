DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE company_emp (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,

    manager_id INT
    FOREIGN KEY (manager_id)
    REFERENCES company_emp(manager_id)

    role_id INT NOT NULL,
    FOREIGN KEY (role_id)
    REFERENCES emp_title(role_id)
    
);

CREATE TABLE emp_role (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    department_id INT NOT NULL
    FOREIGN KEY (department_id)
    REFERENCES company_emp(department_id)
)

CREATE TABLE department (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
)