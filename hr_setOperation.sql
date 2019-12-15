select * from employees ;
--1  set operators 
select count(*) as "employees who earn it"from employees where commission_pct is not null
union all
select count(*) as "losers" from employees where commission_pct is null; 


