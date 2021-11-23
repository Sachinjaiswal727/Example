 Use newpractice

Create Table MYPerson ( 

PersonID int Primary KEY NOT NULL, 

Lastname Varchar(250) NOT NULL, 

FirstName Varchar(250) NOT NULL, 

Age Int  

); 

 
Insert into MyPerson Values(001,'Raina','Suresh',35), 
(002,'Sami','Mohammed',38),
Insert into MyPerson Values (003, 'rohit', 'sharma',88);

Select * from MYPerson; 

  
Create Table Orders ( 

OrderID int NOT NULL PRIMARY KEY, 

OrderNumber int NOT Null, 

PersonID int FOREIGN KEY REFERENCES MYPerson(PersonID) 

); 
 
 Insert into orders values ( 001,202,001)
  Insert into orders values ( 002,302,002)

select * from MYPerson,Orders where MYPerson.PersonID=Orders.PersonID;

Create Table Playerdetails ( 

PersonID int Primary KEY NOT NULL, 

Lastname Varchar(250) NOT NULL, 

FirstName Varchar(250) NOT NULL, 

Topscore  Int NOT Null, matches int Not Null 

); 


Insert into  playerdetails values(001,' ms','dhoni',250,10);
Insert into playerdetails values (002,' mahi','verma',350,20);
Insert into playerdetails values(003,' pandya','ghi',450,25);

Select * from Playerdetails;

Select * from MYPerson,Playerdetails where MYPerson.PersonID=Playerdetails.PersonID;


select MYPerson.PersonID,MYPerson.FirstName,MYPerson.Lastname ,Playerdetails.Topscore
from Playerdetails
full join MYPerson on 
MYPerson.PersonID= Playerdetails.PersonID

select * from MYPerson 
full join Orders on MYPerson.PersonID=Orders.PersonID;