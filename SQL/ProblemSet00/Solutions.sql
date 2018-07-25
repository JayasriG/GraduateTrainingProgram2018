-- ProblemSet 00,July 25 2018
-- Submission by ganesh.jayasri@accenture.com


Q1> Select the Employee with the top three salaries
                    select name,salary from emp a where 3>=(select count(distinct salary) from emp b where b.salary>=a.sal
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
A165|Natasha Stevens|D05|31377|A298
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
                           
  Record Count=1
  Answer
  TIM ARCHER|Product|48834
  TIM ARCHER|Product|48834
  Q10>Select the Employees who report to Natasha Stevens
                               select name from emp where manager_id=(select emp_id from emp where name='NATASHA STEVENS');
  Record count=2
  Answer:ADAM WAYNE
JOSEPH ANGELIN
  
