/* Delete the tables if they already exist */
drop table if exists Highschooler;
drop table if exists Friend;
drop table if exists Likes;

/* Create the schema for our tables */

create table Highschooler(ID int, name text, grade int);

create table Friend(ID1 int, ID2 int);

create table Likes(ID1 int, ID2 int);


/* Populate the tables with our data */

insert into Highschooler values (1510, 'Jordan', 9);

insert into Highschooler values (1689, 'Gabriel', 9);

insert into Highschooler values (1381, 'Tiffany', 9);
insert into Highschooler values (1709, 'Cassandra', 9);

insert into Highschooler values (1101, 'Haley', 10);

insert into Highschooler values (1782, 'Andrew', 10);

insert into Highschooler values (1468, 'Kris', 10);

insert into Highschooler values (1641, 'Brittany', 10);

insert into Highschooler values (1247, 'Alexis', 11);

insert into Highschooler values (1316, 'Austin', 11);

insert into Highschooler values (1911, 'Gabriel', 11);

insert into Highschooler values (1501, 'Jessica', 11);

insert into Highschooler values (1304, 'Jordan', 12);

insert into Highschooler values (1025, 'John', 12);

insert into Highschooler values (1934, 'Kyle', 12);

insert into Highschooler values (1661, 'Logan', 12);


 select * from highschooler;
+------+-----------+-------+
| ID   | name      | grade |
+------+-----------+-------+
| 1510 | Jordan    |     9 |
| 1689 | Gabriel   |     9 |
| 1381 | Tiffany   |     9 |
| 1709 | Cassandra |     9 |
| 1101 | Haley     |    10 |
| 1782 | Andrew    |    10 |
| 1468 | Kris      |    10 |
| 1641 | Brittany  |    10 |
| 1247 | Alexis    |    11 |
| 1316 | Austin    |    11 |
| 1911 | Gabriel   |    11 |
| 1501 | Jessica   |    11 |
| 1304 | Jordan    |    12 |
| 1025 | John      |    12 |
| 1934 | Kyle      |    12 |
| 1661 | Logan     |    12 |
+------+-----------+-------+
16 rows in set

insert into Friend values (1510, 1381);

insert into Friend values (1510, 1689);

insert into Friend values (1689, 1709);

insert into Friend values (1381, 1247);

insert into Friend values (1709, 1247);

insert into Friend values (1689, 1782);

insert into Friend values (1782, 1468);

insert into Friend values (1782, 1316);
insert into Friend values (1782, 1304);

insert into Friend values (1468, 1101);
insert into Friend values (1468, 1641);

insert into Friend values (1101, 1641);

insert into Friend values (1247, 1911);

insert into Friend values (1247, 1501);

insert into Friend values (1911, 1501);

insert into Friend values (1501, 1934);

insert into Friend values (1316, 1934);

insert into Friend values (1934, 1304);

insert into Friend values (1304, 1661);

insert into Friend values (1661, 1025);

insert into Friend select ID2, ID1 from Friend;



select * from friend;
+------+------+
| ID1  | ID2  |
+------+------+
| 1510 | 1381 |
| 1510 | 1689 |
| 1689 | 1709 |
| 1381 | 1247 |
| 1709 | 1247 |
| 1689 | 1782 |
| 1782 | 1468 |
| 1782 | 1316 |
| 1782 | 1304 |
| 1468 | 1101 |
| 1468 | 1641 |
| 1101 | 1641 |
| 1247 | 1911 |
| 1247 | 1501 |
| 1911 | 1501 |
| 1501 | 1934 |
| 1316 | 1934 |
| 1934 | 1304 |
| 1304 | 1661 |
| 1661 | 1025 |
| 1381 | 1510 |
| 1689 | 1510 |
| 1709 | 1689 |
| 1247 | 1381 |
| 1247 | 1709 |
| 1782 | 1689 |
| 1468 | 1782 |
| 1316 | 1782 |
| 1304 | 1782 |
| 1101 | 1468 |
| 1641 | 1468 |
| 1641 | 1101 |
| 1911 | 1247 |
| 1501 | 1247 |
| 1501 | 1911 |
| 1934 | 1501 |
| 1934 | 1316 |
| 1304 | 1934 |
| 1661 | 1304 |
| 1025 | 1661 |
+------+------+
40 rows in set

insert into Likes values(1689, 1709);

insert into Likes values(1709, 1689);

insert into Likes values(1782, 1709);

insert into Likes values(1911, 1247);

insert into Likes values(1247, 1468);

insert into Likes values(1641, 1468);

insert into Likes values(1316, 1304);

insert into Likes values(1501, 1934);

insert into Likes values(1934, 1501);

insert into Likes values(1025, 1101);

select * from likes;
+------+------+
| ID1  | ID2  |
+------+------+
| 1689 | 1709 |
| 1709 | 1689 |
| 1782 | 1709 |
| 1911 | 1247 |
| 1247 | 1468 |
| 1641 | 1468 |
| 1316 | 1304 |
| 1501 | 1934 |
| 1934 | 1501 |
| 1025 | 1101 |
+------+------+
+------+------+
| ID1  | ID2  |
+------+------+
| 1689 | 1709 |
| 1709 | 1689 |
| 1782 | 1709 |
| 1911 | 1247 |
| 1247 | 1468 |
| 1641 | 1468 |
| 1316 | 1304 |
| 1501 | 1934 |
| 1934 | 1501 |
| 1025 | 1101 |
+------+------+
10 rows in set




1)Find the names of all students who are friends with someone named Gabriel. (1 point possible)

select h2.name,f.id2 from highschooler h1 inner join friend f on h1.id=f.id1 inner join highschooler h2 on h2.id=f.id2 where h1.name='Gabriel';
+-----------+------+
| name      | id2  |
+-----------+------+
| Cassandra | 1709 |
| Andrew    | 1782 |
| Jessica   | 1501 |
| Jordan    | 1510 |
| Alexis    | 1247 |
+-----------+------+
5 rows in set

2)For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like. (1 point possible)
select l.id1,h1.grade,h1.name,l.id2,h2.grade,h2.name from highschooler h1 inner join likes l on h1.id=l.id1 inner join highschooler h2 on h2.id=l.id2 where (h1.grade-h2.grade)>=2;
+------+-------+------+------+-------+-------+
| id1  | grade | name | id2  | grade | name  |
+------+-------+------+------+-------+-------+
| 1025 |    12 | John | 1101 |    10 | Haley |
+------+-------+------+------+-------+-------+
1 row in set

3)For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order. (1 point possible)
 select l1.id1,h.name,l1.id2,h1.name from highschooler h inner join likes l1 on h.id=l1.id1 inner join highschooler h1 inner join likes l2 on h1.id=l2.id1 where l1.id1=l2.id2 and l1.id2=l2.id1 and l1.id1>l1.id2;
+------+-----------+------+---------+
| id1  | name      | id2  | name    |
+------+-----------+------+---------+
| 1709 | Cassandra | 1689 | Gabriel |
| 1934 | Kyle      | 1501 | Jessica |
+------+-----------+------+---------+
2 rows in set (0.00 sec)


4)Find all students who do not appear in the Likes table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade. (1 point possible)
select name,grade from highschooler where id not in (select id1 from likes union select id2 from likes);
+---------+-------+
| name    | grade |
+---------+-------+
| Jordan  |     9 |
| Tiffany |     9 |
| Logan   |    12 |
+---------+-------+
3 rows in set

5)For every situation where student A likes student B, but we have no information about whom B likes (that is, B does not appear as an ID1 in the Likes table), return A and B's names and grades. (1 point possible)
select h1.name,h1.grade,a.id1,h2.name,h2.grade,a.id2 from highschooler h1 inner join highschooler h2 inner join  (select id1,id2 from likes where id2 not in (select id1 from likes)) as a on a.id1=h1.id and a.id2=h2.id;
+----------+-------+------+--------+-------+------+
| name     | grade | id1  | name   | grade | id2  |
+----------+-------+------+--------+-------+------+
| John     |    12 | 1025 | Haley  |    10 | 1101 |
| Brittany |    10 | 1641 | Kris   |    10 | 1468 |
| Alexis   |    11 | 1247 | Kris   |    10 | 1468 |
| Austin   |    11 | 1316 | Jordan |    12 | 1304 |
+----------+-------+------+--------+-------+------+
4 rows in set

6)Find names and grades of students who only have friends in the same grade. Return the result sorted by grade, then by name within each grade. (1 point possible)

select name,grade from highschooler where id not in (select id1 from friend f inner join highschooler h1 inner join highschooler h2 on f.id1=h1.id and f.id2=h2.id and h1.grade!=h2.grade);
+----------+-------+
| name     | grade |
+----------+-------+
| Jordan   |     9 |
| Haley    |    10 |
| Kris     |    10 |
| Brittany |    10 |
| Gabriel  |    11 |
| John     |    12 |
| Logan    |    12 |
+----------+-------+
7 rows in set

7)For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C. (1 point possible)


8)Find the difference between the number of students in the school and the number of different first names. (1 point possible)

select count(name)-count(distinct name) from highschooler;
+----------------------------------+
| count(name)-count(distinct name) |
+----------------------------------+
|                                2 |
+----------------------------------+
1 row in set
9)Find the name and grade of all students who are liked by more than one other student. (1 point possible)
select name,id from highschooler where id in ( select id2 from likes group by id2 having count(id2)>1);
+-----------+------+
| name      | id   |
+-----------+------+
| Cassandra | 1709 |
| Kris      | 1468 |
+-----------+------+
2 rows in set

10)For every situation where student A likes student B, but student B likes a different student C, return the names and grades of A, B, and C. (1 point possible)
select l1.id1,h.name,l1.id2,h1.name,l2.id1,h3.name from highschooler h inner join likes l1 on h.id=l1.id1 inner join highschooler h1 inner join likes l2 on h1.id=l1.id2 inner join highschooler h3 on h3.id=l2.id1 where l1.id1=l2.id2 and l1.id2!=l2.id1;
+------+-----------+------+---------+------+---------+
| id1  | name      | id2  | name    | id1  | name    |
+------+-----------+------+---------+------+---------+
| 1709 | Cassandra | 1689 | Gabriel | 1782 | Andrew  |
| 1247 | Alexis    | 1468 | Kris    | 1911 | Gabriel |
+------+-----------+------+---------+------+---------+
2 rows in set

11)Find those students for whom all of their friends are in different grades from themselves. Return the students' names and grades.(1 point possible)
select name,grade from highschooler where id not in (select id1 from friend f inner join highschooler h1 inner join highschooler h2 on f.id1=h1.id and f.id2=h2.id and h1.grade=h2.grade);
+--------+-------+
| name   | grade |
+--------+-------+
| Austin |    11 |
+--------+-------+
1 row in set

12)What is the average number of friends per student? (Your result should be just one number.) (1 point possible)
select round(avg(a)) from (select count(id2) a,id1 from friend group by id1) as b;
+---------------+
| round(avg(a)) |
+---------------+
|             3 |
+---------------+
1 row in set

13)Find the number of students who are either friends with Cassandra or are friends of friends of Cassandra. Do not count Cassandra, even though technically she is a friend of a friend.


14)Find the name and grade of the student(s) with the greatest number of friends. (1 point possible)
select name,grade,id from highschooler h inner join friend f on h.id=f.id1 group by id1 having count(id2)=(select max(a) from (select count(id2) as a from friend group by id1) as b);
+--------+-------+------+
| name   | grade | id   |
+--------+-------+------+
| Alexis |    11 | 1247 |
| Andrew |    10 | 1782 |
+--------+-------+------+
2 rows in set

