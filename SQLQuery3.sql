use  newpractice

Create table Salesman(
SalesmanId Int Primary key , Name Varchar(200), city  Varchar(200), commision int);

Insert into Salesman values (001,'mayank','indore',10);
Insert into Salesman values (002,'pushpa','delhi',20);
Insert into Salesman values (003,'kartik','Nagpur',30);
Insert into Salesman values (004,'partik','mumbai',40);

select * from Salesman;

create Table Ncustmer (
custmerId int, CName varchar(100), Ccity varchar(100), Grade varchar(200), salesmanId Int foreign key REFERENCES salesman(salesmanId)
);

Insert into Ncustmer values ( 100,'kunal',' kolkata', 4,001);
Insert into Ncustmer values ( 200,'naveed',' patna', 8,002);
Insert into Ncustmer values ( 300,'shubham','ranchi',12,003);

select * from Ncustmer;

select Name, Ccity, CName, Salesman.SalesmanId from Salesman inner join Ncustmer on salesman.city=Ncustmer.Ccity;

select CName,city, Name ,commision from Salesman inner join Ncustmer on salesman.SalesmanId=Ncustmer.salesmanId;