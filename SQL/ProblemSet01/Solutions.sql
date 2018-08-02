-- ProblemSet01, July 31 2018--
ganesh.jayasri@accenture.com 
 ---create database hotels;
 ---use database hotels;

----Hotel              (Hotel_No, Name, City)
create table hotel(hotel_no varchar(50),name char(50),city char(50),primary key(hotel_no));
desc hotel;
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| hotel_no | varchar(50) | NO   | PRI |         |       |
| name     | char(50)    | YES  |     | NULL    |       |
| city     | char(50)    | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set 

----Room               (Room_No, @Hotel_No, Type, Price)
create table room(room_no int(20),hotel_no varchar(50),type char(10),price float(10,2),FOREIGN KEY (hotel_no) REFERENCES hotel(hotel_no),primary key(room_no,hotel_no));
desc room;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| room_no  | int(20)     | NO   | PRI | 0       |       |
| hotel_no | varchar(50) | YES  | MUL | NULL    |       |
| type     | char(10)    | YES  |     | NULL    |       |
| price    | float(10,2) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set
----Guest              (Guest­_No, Name, City)

create table guest(guest_no varchar(50),guest_name varchar(50),city char(50),primary key(guest_no));
desc guest;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| guest_no   | varchar(50) | NO   | PRI |         |       |
| guest_name | varchar(50) | YES  |     | NULL    |       |
| city       | char(50)    | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set

----Booking            (@Hotel_No, @Guest_No, Date_From, Date_To, @Room_No)

 create table booking(hotel_no varchar(20) REFERENCES hotel(hotel_no),guest_no varchar(50) REFERENCES guest(guest_no),date_from varchar(50),date_to varchar(50),room_no int(20) REFERENCES room(room_no),primary key(hotel_no,guest_no,room_no));
desc booking;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| hotel_no  | varchar(20) | NO   | PRI |         |       |
| guest_no  | varchar(50) | NO   | PRI |         |       |
| date_from | varchar(50) | YES  |     | NULL    |       |
| date_to   | varchar(50) | YES  |     | NULL    |       |
| room_no   | int(20)     | NO   | PRI | 0       |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set

insert into hotel values('H111','Empire Hotel','New York');
insert into hotel values('H235','Park Place','New York');
insert into hotel values('H432','Brownstone Hotel','Toronto');
insert into hotel values('H498','James Plaza','Toronto');
insert into hotel values('H193','Devon Hotel','Boston');
insert into hotel values('H437','Clairmont Hotel','Boston');
---select * from hotel;
+----------+------------------+----------+
| hotel_no | name             | city     |
+----------+------------------+----------+
| H111     | Empire Hotel     | New York |
| H193     | Devon Hotel      | Boston   |
| H235     | Park Place       | New York |
| H432     | Brownstone Hotel | Toronto  |
| H437     | Clairmont Hotel  | Boston   |
| H498     | James Plaza      | Toronto  |
+----------+------------------+----------+
6 rows in set
insert into room values(313,'H111','S',145.00);
insert into room values(412,'H111','N',145.00);
insert into room values(1267,'H235','N',175.00);
insert into room values(1289,'H235','N',195.00);
insert into room values(876,'H432','S',124.00);
insert into room values(898,'H432','S',124.00);
insert into room values(345,'H498','N',160.00);
insert into room values(467,'H498','N',180.00);
insert into room values(1001,'H193','S',150.00);
insert into room values(1201,'H193','N',175.00);
insert into room values(257,'H437','N',140.00);
insert into room values(223,'H437','N',155.00);
---select * from room;
+---------+----------+------+--------+
| room_no | hotel_no | type | price  |
+---------+----------+------+--------+
|     223 | H437     | N    | 155.00 |
|     257 | H437     | N    | 140.00 |
|     313 | H111     | S    | 145.00 |
|     345 | H498     | N    | 160.00 |
|     412 | H111     | N    | 145.00 |
|     467 | H498     | N    | 180.00 |
|     876 | H432     | S    | 124.00 |
|     898 | H432     | S    | 124.00 |
|    1001 | H193     | S    | 150.00 |
|    1201 | H193     | N    | 175.00 |
|    1267 | H235     | N    | 175.00 |
|    1289 | H235     | N    | 195.00 |
+---------+----------+------+--------+
12 rows in set
insert into guest values('G256','Adam Wayne','Pittsburgh');
insert into guest values('G367','Tara Cummings','Baltimore');
insert into guest values('G879','Vanessa Parry','Pittsburgh');
insert into guest values('G230','Tom Hancock','Philadelphia');
insert into guest values('G467','Robert Swift','Atlanta');
insert into guest values('G190','Edward Cane','Baltimore');
----select * from guest;
+----------+---------------+--------------+
| guest_no | guest_name    | city         |
+----------+---------------+--------------+
| G190     | Edward Cane   | Baltimore    |
| G230     | Tom Hancock   | Philadelphia |
| G256     | Adam Wayne    | Pittsburgh   |
| G367     | Tara Cummings | Baltimore    |
| G467     | Robert Swift  | Atlanta      |
| G879     | Vanessa Parry | Pittsburgh   |
+----------+---------------+--------------+
6 rows in set
insert into booking values('H111','G256','10-AUG-99','15-AUG-99',412);
insert into booking values('H111','G367','18-AUG-99','21-AUG-99',412);
insert into booking values('H235','G879','05-SEP-99','12-SEP-99',1267);
insert into booking values('H498','G230','15-SEP-99','18-SEP-99',467);
insert into booking values('H498','G256','30-NOV-99','02-DEC-99',345);
insert into booking values('H498','G467','03-NOV-99','05-NOV-99',345);
insert into booking values('H193','G190','15-NOV-99','19-NOV-99',1001);
insert into booking values('H193','G367','12-SEP-99','14-SEP-99',1001);
insert into booking values('H193','G367','01-OCT-99','06-OCT-99',1201);
insert into booking values('H437','G190','04-OCT-99','06-OCT-99',223);
insert into booking values('H437','G879','14-SEP-99','17-SEP-99',223);
----select * from booking;
+----------+----------+-----------+-----------+---------+
| hotel_no | guest_no | date_from | date_to   | room_no |
+----------+----------+-----------+-----------+---------+
| H111     | G256     | 10-AUG-99 | 15-AUG-99 |     412 |
| H111     | G367     | 18-AUG-99 | 21-AUG-99 |     412 |
| H193     | G190     | 15-NOV-99 | 19-NOV-99 |    1001 |
| H193     | G367     | 12-SEP-99 | 14-SEP-99 |    1001 |
| H193     | G367     | 01-OCT-99 | 06-OCT-99 |    1201 |
| H235     | G879     | 05-SEP-99 | 12-SEP-99 |    1267 |
| H437     | G190     | 04-OCT-99 | 06-OCT-99 |     223 |
| H437     | G879     | 14-SEP-99 | 17-SEP-99 |     223 |
| H498     | G230     | 15-SEP-99 | 18-SEP-99 |     467 |
| H498     | G256     | 30-NOV-99 | 02-DEC-99 |     345 |
| H498     | G467     | 03-NOV-99 | 05-NOV-99 |     345 |
+----------+----------+-----------+-----------+---------+
11 rows in set


Q1>List full details of all hotels
 select hotel.hotel_no,name,city,type,price from room inner join hotel on room.hotel_no=hotel.hotel_no;
+----------+------------------+----------+------+--------+
| hotel_no | name             | city     | type | price  |
+----------+------------------+----------+------+--------+
| H111     | Empire Hotel     | New York | S    | 145.00 |
| H111     | Empire Hotel     | New York | N    | 145.00 |
| H193     | Devon Hotel      | Boston   | S    | 150.00 |
| H193     | Devon Hotel      | Boston   | N    | 175.00 |
| H235     | Park Place       | New York | N    | 175.00 |
| H235     | Park Place       | New York | N    | 195.00 |
| H432     | Brownstone Hotel | Toronto  | S    | 124.00 |
| H432     | Brownstone Hotel | Toronto  | S    | 124.00 |
| H437     | Clairmont Hotel  | Boston   | N    | 155.00 |
| H437     | Clairmont Hotel  | Boston   | N    | 140.00 |
| H498     | James Plaza      | Toronto  | N    | 160.00 |
| H498     | James Plaza      | Toronto  | N    | 180.00 |
+----------+------------------+----------+------+--------+
12 rows in set 
Q2>List full details of all hotels in New York.
select hotel.hotel_no,name,city,type,price from room inner join hotel on room.hotel_no=hotel.hotel_no and city='New York';
+----------+--------------+----------+------+--------+
| hotel_no | name         | city     | type | price  |
+----------+--------------+----------+------+--------+
| H111     | Empire Hotel | New York | S    | 145.00 |
| H111     | Empire Hotel | New York | N    | 145.00 |
| H235     | Park Place   | New York | N    | 175.00 |
| H235     | Park Place   | New York | N    | 195.00 |
+----------+--------------+----------+------+--------+
4 rows in set
Q3>List the names and cities of all guests, ordered according to their cities.
select guest_name,city from guest order by city;
+---------------+--------------+
| guest_name    | city         |
+---------------+--------------+
| Robert Swift  | Atlanta      |
| Edward Cane   | Baltimore    |
| Tara Cummings | Baltimore    |
| Tom Hancock   | Philadelphia |
| Adam Wayne    | Pittsburgh   |
| Vanessa Parry | Pittsburgh   |
+---------------+--------------+
6 rows in set
Q4>List all details for non-smoking rooms in ascending order of price
select hotel.hotel_no,name,city,type,price from room inner join hotel on hotel.hotel_no=room.hotel_no and type='N' order by price;
+----------+-----------------+----------+------+--------+
| hotel_no | name            | city     | type | price  |
+----------+-----------------+----------+------+--------+
| H437     | Clairmont Hotel | Boston   | N    | 140.00 |
| H111     | Empire Hotel    | New York | N    | 145.00 |
| H437     | Clairmont Hotel | Boston   | N    | 155.00 |
| H498     | James Plaza     | Toronto  | N    | 160.00 |
| H235     | Park Place      | New York | N    | 175.00 |
| H193     | Devon Hotel     | Boston   | N    | 175.00 |
| H498     | James Plaza     | Toronto  | N    | 180.00 |
| H235     | Park Place      | New York | N    | 195.00 |
+----------+-----------------+----------+------+--------+
8 rows in set
Q5>List the number of hotels there are.
select count(name) from hotel;
+-------------+
| count(name) |
+-------------+
|           6 |
+-------------+
1 row in set
Q6>List the cities in which guests live. Each city should be listed only once.
 select distinct(city) from guest;
+--------------+
| city         |
+--------------+
| Baltimore    |
| Philadelphia |
| Pittsburgh   |
| Atlanta      |
+--------------+
4 rows in set
Q7>List the average price of a room.
 select avg(price),hotel_no from room group by hotel_no;
+------------+----------+
| avg(price) | hotel_no |
+------------+----------+
| 145.000000 | H111     |
| 162.500000 | H193     |
| 185.000000 | H235     |
| 124.000000 | H432     |
| 147.500000 | H437     |
| 170.000000 | H498     |
+------------+----------+
+------------+
6 rows in set
Q8>List hotel names, their room numbers, and the type of that room.
select name,room_no,type from room inner join hotel on room.hotel_no=hotel.hotel_no;
+------------------+---------+------+
| name             | room_no | type |
+------------------+---------+------+
| Clairmont Hotel  |     223 | N    |
| Clairmont Hotel  |     257 | N    |
| Empire Hotel     |     313 | S    |
| James Plaza      |     345 | N    |
| Empire Hotel     |     412 | N    |
| James Plaza      |     467 | N    |
| Brownstone Hotel |     876 | S    |
| Brownstone Hotel |     898 | S    |
| Devon Hotel      |    1001 | S    |
| Devon Hotel      |    1201 | N    |
| Park Place       |    1267 | N    |
| Park Place       |    1289 | N    |
+------------------+---------+------+
12 rows in set
Q9>List the hotel names, booking dates, and room numbers for all hotels in New York.
select hotel.name,date_from,booking.room_no from booking inner join hotel where booking.hotel_no=hotel.hotel_no and city='New York';
+--------------+-----------+---------+
| name         | date_from | room_no |
+--------------+-----------+---------+
| Empire Hotel | 10-AUG-99 |     412 |
| Empire Hotel | 18-AUG-99 |     412 |
| Park Place   | 05-SEP-99 |    1267 |
+--------------+-----------+---------+
3 rows in set
Q10>What is the number of bookings that started in the month of September?
select count(guest_no) from booking where date_from like '%SEP%';
+-----------------+
| count(guest_no) |
+-----------------+
|               4 |
+-----------------+
1 row in set
Q11>List the names and cities of guests who began a stay in New York in August.
 select guest_name,guest.city from guest inner join booking inner join hotel where guest.guest_no=booking.guest_no and booking.hotel_no=hotel.hotel_no and hotel.city='New York' and date_from like '%AUG%';
+---------------+------------+
| guest_name    | city       |
+---------------+------------+
| Adam Wayne    | Pittsburgh |
| Tara Cummings | Baltimore  |
+---------------+------------+
2 rows in set
Q12>List the hotel names and room numbers of any hotel rooms that have not been booked.
select hotel.hotel_no,hotel.name,room.room_no from hotel inner join room  where hotel.hotel_no=room.hotel_no and room_no  not in (select room_no from booking );
+----------+------------------+---------+
| hotel_no | name             | room_no |
+----------+------------------+---------+
| H111     | Empire Hotel     |     313 |
| H235     | Park Place       |    1289 |
| H432     | Brownstone Hotel |     876 |
| H432     | Brownstone Hotel |     898 |
| H437     | Clairmont Hotel  |     257 |
+----------+------------------+---------+
5 rows in set
Q13>List the hotel name and city of the hotel with the highest priced room.
select name,city,room.hotel_no,room.room_no,price from room inner join hotel where hotel.hotel_no=room.hotel_no having price = (select max(price) from room);
+------------+----------+----------+---------+--------+
| name       | city     | hotel_no | room_no | price  |
+------------+----------+----------+---------+--------+
| Park Place | New York | H235     |    1289 | 195.00 |
+------------+----------+----------+---------+--------+
1 row in set
Q14>List hotel names, room numbers, cities, and prices for hotels that have rooms with prices lower than the lowest priced room in a Boston hotel.
 select name,city,room.hotel_no,room.room_no,price from room inner join hotel where hotel.hotel_no=room.hotel_no having price < (select min(price) from room where hotel_no in (select hotel_no from hotel where city='Boston'));
+------------------+---------+----------+---------+--------+
| name             | city    | hotel_no | room_no | price  |
+------------------+---------+----------+---------+--------+
| Brownstone Hotel | Toronto | H432     |     876 | 124.00 |
| Brownstone Hotel | Toronto | H432     |     898 | 124.00 |
+------------------+---------+----------+---------+--------+
2 rows in set
Q15>List the average price of a room grouped by city
 select avg(price),city from room inner join hotel where room.hotel_no=hotel.hotel_no group by city;
+------------+----------+
| avg(price) | city     |
+------------+----------+
| 155.000000 | Boston   |
| 165.000000 | New York |
| 147.000000 | Toronto  |
+------------+----------+
3 rows in set
