USE employee_db;
--This is a make up to see how the db would look like

INSERT INTO company_emp (id, first_name, last_name, title_id, manager_id) -- Order matter
VALUES 
(1, "Tess", "Ibn", "1", "1"),
(2, "Bert", "Traore", "4", "5"),
(3, "Mo", "Salah", "2", "3"),
(4, "Ousmane", "Dembele", "3", "1"),



INSERT INTO emp_role (id, title, salary)     
VALUES 
(1, "CEO", "1000000"),
(2, "Team Analyst", "250000"),
(3, "General Manager", "500000"),
(4, "Assistant", "150000");

INSERT INTO department (id, dept_name)    
VALUES 
(1, "Executive"),
(2, "Marketing"),
(3, "Operations"),
(4, "Analytics")
(5, "H&R");

