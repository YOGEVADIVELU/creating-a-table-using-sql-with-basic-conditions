/*creating sql table and exceuting using some conditions*/



/* create a databasse*/
create database sqlproject;

/* use database*/
use sqlproject;


/*table1: employee*/
create table employee
(SNo int identity(1,1),
employeeid varchar(255) primary key,
firstname varchar(255) not null,
lastname varchar(255) not null,
doorno varchar(255) not null,
houseaddress varchar(255) not null,
city varchar(255) not null,
district varchar(255) not null,
pincode int not null,
designation varchar(255) not null,
salary varchar(255) not null,
department varchar(255) not null)



/* table1 insert values*/
insert into employee values('A124','abinay','sudhahar', 1/2,'north street','chennai', 'chennai',60025, 'junior acountant', 18000, 'accounts');
insert into employee values('A125','balaji','udaya', 325,'anjenayer kovil street','tirunelveli', 'tirunelveli',656525, 'junior acountant', 18000, 'accounts');
insert into employee values('A105','brinda','senthil', 135,'3rd cross street','salem', 'salem',635025, 'senior acountant', 25000, 'accounts');
insert into employee values('P154','pavithran','durai', 25/2,'thirunagar,5th street','namakkal', 'namakkal',636025, 'qualitychecker ', 22000, 'production');
insert into employee values('P446','sheela','hariharan', 2/586,'mangalam street','madurai', 'madurai',632125, 'production manager', 28000, 'production');
insert into employee values('P254','raghu','elango', 25,'west car street','erode', 'erode',645225, 'supervisor', 21000, 'production');
insert into employee values('S854','harini','nirmal', 36,'fairlands ','salem', 'salem',636125, 'sales executive', 23000, 'sales');
insert into employee values('S524','neeraj','gopal', 24/8,'thenmalai street','dindugal', 'dindugal',652125, 'sales executive', 23000, 'sale');
insert into employee values('S258','senthuran','sivakumar', 75/9,'kumaran street','palani', 'palani',60025, 'sales manager', 28000, 'sales');
insert into employee values('M568', 'mayon', 'suriya', 29/8,'west mambalam','chennai', 'chennai',600028,'general manager',35000, 'management') ;


/* table1:  to view the table*/
select* from employee;




/*table2: patient*/
create table patient
(SNo int identity(1,1),
patientid varchar(255) primary key,
firstname varchar(255) not null,
lastname varchar(255) not null,
doorno varchar(255) not null,
houseaddress varchar(255) not null,
city varchar(255) not null,
district varchar(255) not null,
pincode int not null,
roomno varchar(255) not null,
ward varchar(255) not null,
department varchar(255) not null);



/* table2: insert values*/
insert into patient values('54A124','rithik','jayakumar', 12,'north street','chennai', 'chennai',60025, '15', 'O2', 'ortho');
insert into patient  values('25Q125','senthil','udaya', 325,'anjenayer kovil street','tirunelveli', 'tirunelveli',656525, '20', 'E5', 'eye');
insert into patient values('36P105','preetha','nareen', 135,'3rd cross street','salem', 'salem',635025, '5', 'G4', 'gyno');
insert into patient values('253P154','srinivasan','raj', 25/2,'thirunagar,5th street','namakkal', 'namakkal',636025, '6 ', 'D5', 'diabetics');
insert into patient values('256W446','sreeja','karthik', 2/586,'mangalam street','madurai', 'madurai',632125, '13', 'G4', 'gyno');
insert into patient values('523R254','ram','eshwaran', 25,'west car street','erode', 'erode',645225, '8', 'O6', 'ortho');
insert into patient values('253S854','helana','nivin', 36,'fairlands ','salem', 'salem',636125, '5', 'P4', 'pediatrics');
insert into patient values('865S524','nila','sudhaharan', 24/8,'thenmalai street','dindugal', 'dindugal',652125, '6', 'G7', 'gyno');
insert into patient values('789S258','senthuran','sivakumar', 75/9,'kumaran street','palani', 'palani',60025, '9', 'E8', 'eye');
insert into patient values('456M568', 'mayon', 'suriya', 29/8,'west mambalam','chennai', 'chennai',600028,'5','N6', 'neuro') ;



/*table2: to view the table*/
select* from patient;

select* from employee;



/*table3: student*/
create table student
(SNo int identity(1,1),
studentid varchar(255) primary key,
firstname varchar(255) not null,
lastname varchar(255) not null,
class varchar(255) not null,
section varchar(255) not null,
groupcode varchar(255) not null,
hostename varchar(255) not null,
blocks varchar(255) not null,
roomno varchar(255) not null)






/*table3: insert values*/
insert into student values('100','kowshik','raja','XI','A','125', 'BHARATHI','a','20');
insert into student values('101','sudhan','manohar', 'XI','A','125', 'BHARATHI','a','20');
insert into student values('102','prem','viswa','XI','A','125', 'BHARATHI','a','22');
insert into student values('103','mani','raj','XI','B','126', 'BHARATHI','a','21');
insert into student values('104','siva','guru','XI','C','127', 'BHARATHI','B','2');
insert into student values('105','Chitra','ravi','XI','B','126', 'MULLAI','a','2');
insert into student values('106','MEERA','nivin','XI','D','128', 'MULLAI','B','15');
insert into student values('107','NILAN','Balu','XI','D','128', 'BHARATHI','a','20');
insert into student values('108','advaith','rudran','XI','c','127', 'BHARATHI','B','22' );
insert into student values('109', 'mayon', 'suriya','XI','A','125', 'BHARATHI','a','20');


/* table3 : to view the table*/
select* from student;



/*table4: teacher*/
create table teacher
(SNo int identity(1,1),
teacherid varchar(255) primary key,
firstname varchar(255) not null,
lastname varchar(255) not null,
class varchar(255) not null,
studentidno varchar(255) not null,
subjects varchar(255) not null
foreign key(studentidno) references student(studentid));





/* table4 : insert values*/
insert into teacher values('200','rathinam','indran','XI','100','tamil');
insert into teacher values('201','sudhan','manohar', 'XI','101','enlish');
insert into teacher values('202','prem','viswa','XI','102','maths');
insert into teacher values('203','mani','raj','XI','103','chemitry');
insert into teacher values('204','siva','guru','XI','104','botony');
insert into teacher values('205','Chitra','ravi','XI','105','zooloy');
insert into teacher values('206','MEERA','nivin','XI','106','commerce');
insert into teacher values('207','NILAN','Balu','XI','107','accounts');
insert into teacher values('208','advaith','rudran','XI','108','maths' );
insert into teacher values('209', 'mayon', 'suriya','XI','109', 'physics');


/*table4: to view the table*/
select* from teacher;





/*table 1: alter the table column*/

alter table employee add age int;

/*table 1:update the data in added colunm*/
 update employee set age=32 where sno=1;
 update employee set age=33 where sno=2;
 update employee set age=22 where sno=3;
 update employee set age=41 where sno=4;
 update employee set age=23 where sno=5;
 update employee set age=28 where sno=6;
 update employee set age=29 where firstname='mayon';
 update employee set age=27 where lastname='sivakumar';
 update employee set age=42 where district='dindugal';
 update employee set age=29 where sno=9;
 update employee set age=35 where doorno=36;

 /*table 1:view the city details*/

 select*from employee where city='salem';

 /*table 1:orderby descending order*/

 select *from employee order by employeeid desc;

 /*table 1:groupby */
 select age  from employee group by age;

 /* table 1:min*/

 select min(salary) from employee ;

 /*table 1:max */ 
 select max(salary) from employee;


 /*table 1:list out the salary for employees between 20000 and  30000*/
 select * from employee where salary between 20000 and 30000; 

 /* table 1:count of salary for employees between 10000 and 20000 */

 select count(salary) from employee where salary between 10000 and 20000;

 /*table 1:top 5 salary earning employees*/

 select top 5  salary from employee;




 /* table2:to show null values*/

alter table patient add dischargedate date;



/* table2: delete the row*/

delete from patient where firstname='preetha';