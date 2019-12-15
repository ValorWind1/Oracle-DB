--20
select l.city , l.location_id , d.department_name from departments d join locations l 
on d.location_id = l.location_id;
--21
select * from locations;
select l.city , c.country_name from locations l join countries c on l.country_id = c.country_id;
--22 
select * from departments;
select * from locations;
select c.country_name , l.city , d.department_name from countries c join locations l on l.country_id = c.country_id 
join departments d on d.location_id = l.location_id;
--23
select * from job_history;
select e.first_name , e.last_name,j.job_id from employees e join job_history j on j.employee_id = e.employee_id;
--24
select * from jobs;

select jb.job_title , jh.employee_id,jh.start_date from jobs jb join job_history jh on 
jb.job_id = jh.job_id;

-- 25 
select * from employees;
select jb.job_title , jh.employee_id,jh.start_date ,e.first_name,e.last_name from jobs jb join job_history jh on 
jb.job_id = jh.job_id join employees e on e.employee_id = jh.employee_id;








