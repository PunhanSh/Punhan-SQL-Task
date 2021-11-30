--CREATE DATABASE Image1_1
USE Image1_1

--TASK-1

--CREATE TABLE salesman(
--salesman_id int primary key identity(5001,1),
--[name] nvarchar(30),
--city nvarchar(20),
--commission decimal(3,2)
--)
--INSERT INTO salesman VALUES('James Hoog','New York', 0.15),('Nail Kiete','Paris', 0.13),('Pit Alex','London', 0.11),('Mc Lyon','Paris', 0.14),('Paul Adam','Rome', 0.13),('Laouson Hen','San Jose', 0.12)
--SELECT * FROM salesman

--TASK-2

--CREATE TABLE emp_details(
--EMP_IDNO int PRIMARY KEY identity(127323,1),
--EMP_FNAME nvarchar(15),
--EMP_LNAME nvarchar(15),
--EMP_DEPT tinyint
--)
--INSERT INTO emp_details VALUES('Michaele','Robbin',57),('Carlos','Snares',63),('Enric','Dosio',57),('Jhon','Snares',63),('Joseph','Dosni',47),('Zanifer','Emily',47),('Kuleswar','Sitaraman',57),('Henrey','Gabriel',47),('Alex','Manuel',57)
--SELECT * FROM emp_details
--SELECT * FROM emp_details
--WHERE EMP_LNAME='EMILY' OR EMP_LNAME='DOSNI';

--TASK-3

--CREATE TABLE customer(
--customer_id int PRIMARY KEY identity(3001,1),
--cust_name nvarchar(15),
--city nvarchar(20),
--grade smallint,
--salesman_id int FOREIGN KEY references salesman(salesman_id)
--)
--INSERT INTO customer VALUES
--('Nick Rimando','New York',100,5001),
--('Brad Davis','New York',200,5001),
--('Graham Zusi','California',200,5002),
--('Julian Green','London',300,5002),
--('Fabian Johnson','Paris',300,5004),
--('Geoff Cameron','Berlin',100,5006),
--('Jozv Altidor','Moscow',200,5005)
--SELECT * FROM customer
--WHERE grade>100 AND city='New York'

--TASK-4

--SELECT * FROM customer
--WHERE grade=200

--TASK-5

--SELECT * FROM salesman
--WHERE commission<0.12 AND commission>0.10

--TASK-6

--SELECT [name],commission FROM salesman

--TASK-7 img-5
--CREATE Table nobel_win(
--[YEAR] smallint,
--[SUBJECT] nvarchar(20),
--WINNER nvarchar(40),
--COUTRY nvarchar(20),
--CATEGORY nvarchar(20)
--)
--INSERT INTO nobel_win VALUES
--(1970,'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
--(1970,'Physics', 'Louis Neel', 'France', 'Scientist'),
--(1970,'Chemistry', 'Luis Federico', 'France', 'Scientist'),
--(1970,'Physiology', 'Ulf von', 'Sweden', 'Scientist'),
--(1970,'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
--(1970,'Literature', 'Aleksandr Soly', 'Russia', 'Linguist'),
--(1970,'Economics', 'Paul Samuelson', 'USA', 'Economist'),
--(1970,'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
--(1971,'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
--(1971,'Physics', 'Gerhard Herzberg', 'Germany', 'Scientist'),
--(1971,'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
--(1971,'Literature', 'Pablo Nerudo', 'Chile', 'Linguist'),
--(1971,'Economics', 'Simon Kuznetz', 'Russia', 'Economics'),
--(1978,'Peace', 'Anwar Al-Sadat', 'Egypt', 'President'),
--(1978,'Peace', 'Menachem Begin', 'Israel', 'Prime-Minister'),
--(1987,'Chemistry', 'Donald J.', 'USA', 'Scientist'),
--(1987,'Chemistry', 'Jean-Maria Lehn', 'France', 'Scientist'),
--(1987,'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
--(1994,'Peace', 'Johannes Georg', 'Israel', 'Prime-Minister'),
--(1987,'Physics', 'Yitzhak Rabin', 'Germany', 'Scientist'),
--(1987,'Literature', 'Joseph Brodskoy', 'Russia', 'Linguist'),
--(1987,'Economics', 'Robert Solow', 'USA', 'Economics'),
--(1994,'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist')
--SELECT * FROM nobel_win
--WHERE [YEAR] = 1970 and not [subject]='Chemistry' and not [subject]='Economics'

--TASK-8

--SELECT * FROM salesman
--WHERE city='Paris' OR city='Rome'

--TASK-9

--SELECT * FROM customer
--WHERE customer_id=3008 OR customer_id=3012 OR customer_id=3011

--TASK-10

 --SELECT * FROM salesman WHERE NOT NAME LIKE 'L%'
 --SELECT * FROM salesman WHERE not [name] LIKE 'L%' OR not [name] LIKE 'A%'

 --TASK-11

 --SELECT * FROM customer WHERE cust_name LIKE '%n'

 --TASK-12

 --INSERT INTO customer VALUES ('Brad Guzan','London','', 5005)
 --DELETE FROM customer WHERE customer_id=3015;
 --SELECT * FROM customer 
 --WHERE NOT grade=0

 --TASK-13

 --SELECT 'This ' + 'is ' + 'SQL ' + 'EXERCISES, ' + 'Practice ' + 'and ' + 'Solution.'


 --30.11.2021

 SELECT * FROM salesman
 SELECT * FROM customer


 --Task-Join3

 --SELECT c.cust_name as 'Customer_Name', c.city as 'Customer_City',c.grade, s.[name] as 'Salesman_Name', s.city as 'Salesman_City', s.commission FROM salesman s
 --INNER JOIN customer c ON c.salesman_id=s.salesman_id

 --Task-Join4

 -- SELECT c.cust_name as 'Customer_Name', c.city as 'Customer_City',c.grade, s.[name] as 'Salesman_Name', s.city as 'Salesman_City', s.commission FROM salesman s
 --INNER JOIN customer c ON c.salesman_id=s.salesman_id
 --WHERE commission>0.12

 --Task-Join5

 -- SELECT c.cust_name as 'Customer_Name', c.city as 'Customer_City',c.grade, s.[name] as 'Salesman_Name', s.city as 'Salesman_City', s.commission FROM salesman s
 --INNER JOIN customer c ON c.salesman_id=s.salesman_id
 --WHERE commission>0.12 AND NOT s.city=c.city

 --Task-Join6

 --CREATE TABLE orders(
 --ord_no int PRIMARY KEY identity(70001,1),
 --purch_amt float,
 --ord_date Date,
 --customer_id int FOREIGN KEY REFERENCES customer(customer_id),
 --salesman_id int FOREIGN KEY REFERENCES salesman(salesman_id)
 --)

 --INSERT INTO orders VALUES
 --(150.5,2012/10/05,3008,5002), (270.65,2012/09/10,3009,5005), (65.26,2012/10/05,3010,5001), (110.5,2012/08/17,3011,5003), (948.5,2012/09/10,3012,5002),
 --(2400.6,2012/07/27,3013,5001), (5760,2012/09/10,3014,5001), (1983.43,2012/10/10,3016,5006), (2480.4,2012/10/10,3008,5003), (250.45,2012/06/27,3009,5002),
 --(75.29,2012/08/17,3010,5006), (3045.6,2012/04/25,3011,5001)
