--26 
select * from employees ;
select * from job_history ; 

SELECT e.employee_id, e.first_name, e.last_name, jh.job_id FROM   employees   e
LEFT OUTER JOIN job_history jh ON e.employee_id = jh.employee_id ORDER BY e.employee_id;

--27 
select j.job_title , jh.employee_id from jobs j left outer join job_history jh on jh.job_id = j.job_id;
--28
select * from jobs;
select j.job_title , jh.employee_id from jobs j left outer join job_history jh on jh.job_id = j.job_id
where j.min_salary > 9000;
--29
select j.job_title  , jh.employee_id , jh.start_date from jobs j right outer join job_history jh 
on jh.job_id = j.job_id where jh.start_date > DATE '1998-01-01'  ;
--30
select j.job_title  , jh.employee_id , jh.start_date ,e.first_name,e.last_name from jobs j left outer join job_history jh 
on jh.job_id = j.job_id left outer join employees e on e.job_id = j.job_id ;
--31
select e.first_name , e.last_name , j.job_title ,jh.start_date,jh.employee_id from jobs j
left outer join employees e on e.job_id = j.job_id left outer join job_history jh on 
jh.job_id = e.job_id;





