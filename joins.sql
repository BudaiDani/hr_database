USE hr_db;

#1
SELECT locations.LOCATION_ID, locations.STREET_ADDRESS,
locations.CITY, locations.STATE_PROVINCE, countries.COUNTRY_NAME
FROM locations NATURAL JOIN countries
WHERE locations.COUNTRY_ID = countries.COUNTRY_ID;

#2
SELECT employees.FIRST_NAME, employees.LAST_NAME,
departments.DEPARTMENT_ID, departments.DEPARTMENT_NAME
FROM departments NATURAL JOIN employees;

#3
SELECT employees.FIRST_NAME, employees.LAST_NAME, employees.JOB_ID, employees.DEPARTMENT_ID, departments.DEPARTMENT_NAME
FROM employees
INNER JOIN departments
ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
WHERE departments.LOCATION_ID
= (SELECT locations.LOCATION_ID
FROM locations
INNER JOIN departments
ON locations.LOCATION_ID = departments.LOCATION_ID
WHERE locations.CITY = 'London');

#4
SELECT COUNT(employees.EMPLOYEE_ID) AS WORKERS, departments.DEPARTMENT_NAME
FROM employees
LEFT JOIN departments
ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
GROUP BY departments.DEPARTMENT_ID;

#5
SELECT employees.FIRST_NAME, employees.LAST_NAME, employees.HIRE_DATE
FROM employees
WHERE employees.HIRE_DATE >
(SELECT employees.HIRE_DATE
FROM employees
WHERE employees.LAST_NAME = 'Jones');






