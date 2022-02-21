DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE company_emp (
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title_id INT NOT NULL,
    FOREIGN KEY (title_id)
    REFERENCES emp_title(title_id)
);

CREATE TABLE emp_title (
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL
)