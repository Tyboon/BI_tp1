-----------------
--Allart Emilie--
-- 02/02/2015 --

--------------- Exercice 1 : ---------------

-- Question 1 --
select deptno, ename, sal, rank() over(partition by deptno order by sal desc) as rang from emp where deptno=30 or deptno=10;

-- Question 2 --
select deptno,ename,sal,dense_rank() over(partition by deptno order by sal desc) as rang from emp where deptno = 30 or deptno = 10;

-- Question 3 --
select distinct e.deptno,e.sal,
	dense_rank()over(partition by e.deptno order by -e.sal) rank 
	from emp e where e.deptno=10 or e.deptno=20 
	order by e.deptno,-e.sal;

-- Question 4 --
-- group by --
select e.job,sum(e.sal) from emp e group by job;

-- partition by --
select distinct  e.job,sum(e.sal) over(partition by job) from emp e  ;

-- Question 5 --
TODO difference entre group by et partition by : 


-- Question 6 --
select e.deptno,e.job,sum(e.sal) 
	from emp e 
	group by rollup(e.deptno,e.job);

-- Question 7 --	
TODO 
(cf poly)


---------------- Exercice 2 : ----------------



