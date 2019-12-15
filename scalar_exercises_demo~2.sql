SELECT salary,first_name,last_name,
        TO_CHAR(salary,'$9,999.99') AS sal
        
FROM employees;


select * from employees ;

SELECT first_name,last_name,hire_date,
        TO_CHAR(hire_date,'yyyy/mm/dd') AS sal
        
FROM employees;


SELECT first_name,last_name,ROUND(salary),trunc(salary ,2 )
FROM employees;

SELECT LOWER(first_name) , UPPER (last_name) from employees where department_id = 30 ;

select * from employees;
 
select last_name || SUBSTR(last_name,1,1)  as a from employees where department_id = 30; 

select * from locations ; 

select street_address , ltrim(street_address, '0123456789-') as l from locations;

select street_address , length(street_address) from locations ; 
 
select location_id ,  street_address  , city , state_province from locations
WHERE instr(upper(street_address) , 'RUE' ) > 0
or instr (upper (street_address) , 'RUA' ) > 0 
order by location_id desc;


