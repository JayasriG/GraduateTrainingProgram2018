-- ProblemSet 00,July 25 2018
-- Submission by ganesh.jayasri@accenture.com


Q1> Select the Employee with the top three salaries
                    select name,salary from emp a where 3>=(select count(distinct salary) from emp b where b.salary>=a.salary) order by a.salary desc;
record count=3
Answer
TARA CUMMINGS|99475
PAUL VINCET|94791
ADAM WAYNE|94324
Q2>Select the Employee with the least salary
                         select Name from emp where salary=(select min(salary) from Emp);
record count=1
Answer
JOHN HELLEN
Q3>Select the Employee who does not have a manager in the department table
                          select name from emp where manager_id not in (select emp_id from emp inner join department on emp.name=department.dept_manager);
record count=4
Answer
A165|Natasha Stevens|D05|31377|A298
A120|Tim Archer|D01|48834|A298
A187|Adam Justin|D02|80543|A298
A178|Bruce Wills|D03|66861|A298
Q4>Select the Employee who is also a Manager                                                  
                         select e.name,b.name from emp e join emp b where b.manager_id=e.emp_id;
record count=14
Answer
BRUCE WILLS|NICK MARTIN
TIM ARCHER|BRAD MICHAEL
TIM ARCHER|EDWARD CANE
TIM ARCHER|JOHN HELLEN
TIM ARCHER|PAUL VINCET
ADAM JUSTIN|HAROLLD STEVENS
ADAM JUSTIN|ROBIN WAYNE
ADAM JUSTIN|STEVE MICHELOS
ADAM JUSTIN|STUART WILLIAM
ADAM JUSTIN|TARA CUMMINGS
ADAM JUSTIN|TOM HANKS
ADAM JUSTIN|VANESSA PARY
NATASHA STEVENS|ADAM WAYNE
NATASHA STEVENS|JOSEPH ANGELIN
Q5>Select the Empolyee who is a Manager and has least salary
                           select name,min(salary) from emp inner join department on emp.name=department.dept_name;
Answer:A165|Natasha Stevens|D05|31377|A298
record count=1                                                                
Q6>Select the total number of Employees in Communications departments
                             select count(emp_id),Dept_name from emp inner join department on emp.dept_id=department.dept_id where dept_name='Communications';
Record Count=1
Answer
6|Communication
Q7>Select the Employee in Finance Department who has the top salary
                              select name,Dept_name,max(salary) from emp inner join department on emp.dept_id=department.dept_id where dept_name='Finanace';
    Record Count=1             
    Answer
        ADAM WAYNE|Finanace|94324
Q8>Select the Employee in product depatment who has the least salary
                              select name,Dept_name,min(salary) from emp inner join department on emp.dept_id=department.dept_id where dept_name='Product';
  Record Count=1
  Answer
  TIM ARCHER|Product|48834
Q9>Select the count of Empolyees in Health with maximum salary
                           select count(emp_id),max(salary) from emp where dept_id=(select dept_id from department where dept_name='Health')
Answer 6|94791
Q10>Select the Employees who report to Natasha Stevens
                               select name from emp where manager_id=(select emp_id from emp where name='NATASHA STEVENS');
  Record count=2
  Answer:ADAM WAYNE
         JOSEPH ANGELIN
Q11>Display the Employee name,Employee count,Dep name,Dept manager in the Health department
                               select name,dept_name,dept_manager from emp inner join department on emp.dept_id=department.dept_id where dept_name='Health';
    Record count=4
Answer:PAUL VINCET|Health|Tim Archer
BRAD MICHAEL|Health|Tim Archer
EDWARD CANE|Health|Tim Archer
JOHN HELLEN|Health|Tim Archer
Q12>Display the Department id,Employee ids and Manager ids for the Communications department
                               select emp_id,department.Dept_id,manager_id from emp inner join department on emp.dept_id=department.dept_id where dept_name='Communications';
A116|D02|A187
A121|D02|A187
A133|D02|A187
A187|D02|A187
A194|D02|A187
A198|D02|A187
Q13>Select the Average Expenses for Each dept with Dept id and Dept name
                               select * from department inner join (select avg(salary),dept_id from emp group by dept_id) as t on department.dept_id=t.dept_id;
D01|Health|Tim Archer|55958.75|D01
D02|Communications|Adam Justin|48271.3333333333|D02
D03|Product|Bruce Wills|55289.6666666667|D03
D04|Insurance|Robert Swift|64020.0|D04
D05|Finanace|Natasha Stewens|56660.3333333333|D05
Q14>Select the total expense for the department finance
                              select sum(salary) from emp where dept_id= (select dept_id from department where dept_name='Finance');
169981
Q15>Select the department which spends the least with Dept id and Dept manager name
                              select * from department inner join (select max(sal),dept_id from(select sum(salary) as sal,dept_id from emp group by dept_id)) as t on department.dept_id=t.dept_id;
D02|Communications|Adam Justin|289628|D02
Q16>Select the count of Employees in each department
                              select dept_id,count(emp_id) from emp group by dept_id;
D01|4
D02|6
D03|3
D04|2
D05|3
Q17>Select the count of Employees in each department having salary <10000
                          select count(emp_id),dept_id from emp  group by dept_id having salary<10000;
empty set
Q18>Select the total number of Employees in Dept id D04
                          select count(emp_id) from emp  where dept_id='D04';
2
Q19>Select all department details of the Department with Maximum Employees
                          select * from Department d inner join (select  max(cnt),dept_id from (select count(emp_id) as cnt,dept_id from emp group by dept_id)) as e on d.dept_id=e.dept_id;
D02|Communications|Adam Justin|6|D02
Q20>Select the Employees who has Tim Cook as their manager
                           select name from emp where manager_id=(select emp_id from emp where name='TIM COOK');
empty set

