-- SQL HomeWork 3

-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id=salary.id 

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary.monthly_salary
from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id=salary.id
where salary.monthly_salary < 2000

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select salary.monthly_salary
from employee_salary
right join employees on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id
where employees.employee_name is null

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select salary.monthly_salary
from employee_salary
right join employees on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id 
where employees.employee_name is null and salary.monthly_salary < 2000

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name
from employee_salary
right join employees on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary is null

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id

-- 7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_Java developer'

-- 8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_Python developer'

-- 9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_QA engineer'

-- 10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_Manual QA engineer'

-- 11. ������� ����� � ��������� ��������������� QA.
select employees.employee_name, roles.role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_Automation QA engineer'

-- 12. ������� ����� � �������� Junior ������������.
select employees.employee_name, roles.role_name, salary.monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Junior_%'


-- 13. ������� ����� � �������� Middle ������������
select employees.employee_name, roles.role_name, salary.monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Middle_%'

-- 14. ������� ����� � �������� Senior ������������
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Senior_%'

-- 15. ������� �������� Java �������������
select roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_Java developer'

-- 16. ������� �������� Python �������������
select roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%_Python developer'

-- 17. ������� ����� � �������� Junior Python �������������
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Junior Python developer'

-- 18. ������� ����� � �������� Middle JS �������������
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Middle J%S% developer'

-- 19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Senior Java developer'

-- 20. ������� �������� Junior QA ���������
select roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Junior_%_QA engineer'

-- 21. ������� ������� �������� ���� Junior ������������
select AVG(salary. monthly_salary)
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Junior_%'

-- 22. ������� ����� ������� JS �������������
select sum(salary. monthly_salary)
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%_JavaScript developer'

-- 23. ������� ����������� �� QA ���������
select min(salary. monthly_salary)
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_QA engineer'

-- 24. ������� ������������ �� QA ���������
select max(salary. monthly_salary)
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%_QA engineer'

-- 25. ������� ���������� QA ���������
select count(roles.role_name)
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%_QA engineer'

-- 26. ������� ���������� Middle ������������.
select count(roles.role_name)
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Middle_%'

-- 27. ������� ���������� �������������
select count(roles.role_name)
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%_developer'

-- 28. ������� ���� (�����) �������� �������������.
select sum(salary. monthly_salary)
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%_developer'

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
order by salary. monthly_salary 

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where  salary. monthly_salary between 1700 and 2300
order by salary. monthly_salary 

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id 
where  salary. monthly_salary < 2300
order by salary. monthly_salary

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary. monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where  salary. monthly_salary in (1100, 1500, 2000)
order by salary. monthly_salary








