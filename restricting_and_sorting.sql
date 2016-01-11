USE hr_db;

#1
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM employees
WHERE SALARY NOT BETWEEN 10000 AND 15000
AND DEPARTMENT_ID = 30 OR DEPARTMENT_ID = 100;

#2
SELECT FIRST_NAME, LAST_NAME
FROM employees
WHERE YEAR(HIRE_DATE) = 1987;

#3
SELECT FIRST_NAME
FROM employees
WHERE FIRST_NAME LIKE '%b%' AND FIRST_NAME LIKE '%c%';

#4
SELECT LAST_NAME, JOB_TITLE, SALARY
FROM employees, jobs
WHERE JOB_TITLE LIKE 'Programmer'
OR JOB_TITLE LIKE 'Shipping Clerk'
AND SALARY != 4500 AND SALARY != 10000 AND SALARY != 15000;

#5
SELECT * FROM employees
WHERE LAST_NAME = 'BLAKE' OR LAST_NAME = 'SCOTT' OR LAST_NAME = 'KING' OR LAST_NAME = 'FORD';