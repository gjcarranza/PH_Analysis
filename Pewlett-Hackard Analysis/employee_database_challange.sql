-- Retrieve titles of retirees
select e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date into retirement_titles from employees as e inner join titles as ti on (e.emp_no=ti.emp_no) where (birth_date between '1952-01-01' and '1955-12-31') order by emp_no asc; 

select *from retirement_titles;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title, rt.to_date into unique_title from retirement_titles as rt order by emp_no, to_date desc;

select *from unique_title;
 
-- Make and export file
select count(title) "count", title into retiring_title from unique_title group by title order by count desc;

select *from retiring_title;

-- Mentorship Eligibility
select e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date into mentorship_eligbility from employees as e join dept_emp as de on (e.emp_no=de.emp_no) inner join titles as ti on (e.emp_no=ti.emp_no) where (e.birth_date between '1965-01-01' and '1965-12-31') and (de.to_date='9999-01-01') order by e.emp_no asc; 
drop table mentorship_eligbility cascade;
select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ti.title into mentorship_eligibility from employees as e join dept_emp as de on (e.emp_no=de.emp_no) inner join titles as ti on (e.emp_no=ti.emp_no) where (e.birth_date between '1965-01-01' and '1965-12-31') and (de.to_date='9999-01-01') order by e.emp_no asc; 
 
select *from mentorship_eligibility;