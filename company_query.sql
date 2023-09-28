#pulling the full name of our employees but 
#looking specifically for an employee with the initials 'AJ'
SELECT fname,lname, 'Daniel Carignan'
FROM employee
WHERE fname LIKE 'A%' AND lname LIKE 'J%';


#pulling the names and department's names but 
#we are trying to see who works in 'Hardware'
SELECT fname, lname, dname, 'Daniel Carognan' AS student_name
FROM employee
INNER JOIN department
WHERE dname = 'Hardware';


#pulling the names, salary, and project names from our tables.
#here we are looking for the employees that are resonsible for 
#'ProductX'
SELECT fname, lname, salary, pname, 'Daniel Carignan' AS student_name
FROM employee
INNER JOIN project
WHERE pname = 'ProductX';


#here we are calculating the 401K from the salaries that out 
#employees make. we do this by dividing 5 by their salary
#and then multiplying it by 100
SELECT fname, lname, (5/salary * 100) AS total401k, 'Daniel Carignan' AS student_name
FROM employee;


#here we are looking for the number of hours our employees
#put in on the 'ProductX'
SELECT pname, hours, fname, lname, 'Daniel Carignan' AS student_name
FROM project
INNER JOIN works_on, employee
WHERE pname = 'ProductX';


#here we are looking for the highest paid female out 
#of our employees.
SELECT fname, lname, dname, salary, 'Daniel Carignan' AS student_name
FROM employee
INNER JOIN department
WHERE sex = 'F' AND salary >=79000;