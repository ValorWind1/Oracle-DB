select * from dept ;
--1
select dname , deptno from dept ;
--2
select * from dept;
--3
select dname as Name , deptno as dept# , loc as "Dept Location" from dept;
--4 
select * from emp;
select deptno from emp;
--5
select distinct deptno from emp;
--6
select deptno , job from emp;
--7
select distinct deptno , job from emp;
--8
select ename from emp where deptno = 30;
--9
select ename from emp where hiredate ='17-Dec-1981';
--10
select ename from emp where hiredate >'17-Dec-1981';
--11
select ename from emp where job = 'clerk';
--12
select ename from emp where job = 'CLERK';
--13
select ename from emp where sal > 2500;
--14
select ename from emp where sal between 1000 and 1600;
--15
select ename from emp where ename like '%ER%';
--16
select ename , empno from emp where comm is null ;
--17
select empno,ename,comm from emp order by comm;
--18
select empno,ename,comm from emp order by comm desc;
--19
select empno,ename,comm from emp order by comm DESC NULLS LAST;





