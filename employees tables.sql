select * from employees;
delete from employees where EMPLOYEE_ID = 200 and 104;

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES
  (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2006-01-03', 'IT_PROG', 9000.00, 0.00, 102, 60),
  (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2007-05-21', 'IT_PROG', 6000.00, 0.00, 103, 60),
  (200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '2003-09-17', 'AD_ASST', 4400.00, 0.00, 101, 10);

select employee_id,first_name,last_name from employees where salary > (select avg(SALARY) from employees);

select first_name, last_name, employee_id, salary from employees where MANAGER_ID =(select employee_id from employees where first_name='payam' );

#department ID, name (first), job ID and department name--

select a.department_id, a.first_name, a.Job_id, b.department_name from employees a, departments b where a.DEPARTMENT_ID = b.DEPARTMENT_ID  and b.department_name='finance';


select * from employees where salary = 3000 and manager_id = 121;

select * from employees where EMPLOYEE_ID in (134, 159, 183);

select * from employees where salary > 1000 and salary<3000;
select * from employees where SALARY between (select 1000) and 3000;

select * from employees where DEPARTMENT_ID not in (select DEPARTMENT_ID from departments where MANAGER_ID between 100 and 200);