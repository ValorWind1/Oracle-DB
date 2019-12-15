--2 aggregating information 
select count(*) as "count" from emp ; 
--3 
select * from emp ;
select empno , ename , sal , comm from emp order by sal ; 

--4 
select count(sal) as "count", count(distinct sal) as "distinct" from emp where sal is not null ; 

--5 , 6 
select count(comm) as " count", sum(comm) as "Sum" , avg (comm) as " Average ",
round(avg(coalesce(comm , 0)) , 3) as " all records " from emp ;
-- 7 
select max(sal) as "max sal" , min(sal) as "min" from emp ; 
 
-- 8 
select max(hiredate) as "max H date" , min(hiredate) as "min H date" from emp ; 