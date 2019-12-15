select * from employees;
-- 1 
select department_id , count(employee_id) , min(salary),
max(salary) ,sum(salary), round(avg(salary ),0) from employees group by department_id ; 

-- 2 
select department_id , count(employee_id) , min(salary),
max(salary) ,sum(salary), round(avg(salary ),0) from employees group by department_id 
order by department_id desc;

--3 

select department_id , count(employee_id) , min(salary),
max(salary) ,sum(salary), round(avg(salary ),0) , round (avg(salary) - min (salary), 0) from employees group by department_id 
order by department_id desc;

--4 





