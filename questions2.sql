-- Question 1
select 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.gender,
	s.salary
from employees as e
left join salaries as s on e.emp_no=s.emp_no ;

-- Question 2
select 
	 emp_no
	,first_name
	,last_name
	,hire_date
from 
	(select 
	    e.*
       ,extract(year from hire_date) 
     from employees as e) as t1
where date_part = 1986;

-- Question 3
select 
	m.dept_no
   ,d.dept_name
   ,m.emp_no
   ,e.last_name
   ,e.first_name
   ,m.to_date
   ,m.from_date
from dept_manager as m
left join departments as d on m.dept_no=d.dept_no
left join employees as e on m.emp_no=e.emp_no;

-- Question 4

select 
	 e.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
from employees as e 
left join dept_emp as de on e.emp_no=de.emp_no
inner join departments d on de.dept_no=d.dept_no;

-- Question 5

select *
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- Question 6

select 
	  de.emp_no
	 ,e.last_name
	 ,e.first_name
	 ,d.dept_name
from employees as e
left join dept_emp as de on e.emp_no=de.emp_no
inner join departments as d on de.dept_no=d.dept_no
where dept_name = 'Sales';

-- Question 7

select 
	  de.emp_no
	 ,e.last_name
	 ,e.first_name
	 ,d.dept_name
from employees as e
left join dept_emp as de on e.emp_no=de.emp_no
inner join departments as d on de.dept_no=d.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

-- Question 8

select 
	 last_name
	,count(emp_no) 
from employees
group by last_name
order by count(emp_no) desc
