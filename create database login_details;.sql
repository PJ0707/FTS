create database login_details; 
use login_details; 
--Student Login Datatable--- 
create table login_data(Id varchar(30),password 
varchar(30),name varchar(30),primary key(ID)); 
insert into login_data values(1,1234,'Jyothsna'); 
insert into login_data values(2,1234,'Jaswanth'); 
insert into login_data values(3,1234,'Sasi Venkat'); 
insert into login data values(4,1234,'Spandhana');
---Faculty Login Datatable--- 
create table login_data(FId varchar(30),fname 
varchar(30),password varchar(30),primary key(FID)); 
insert into login_data values(1,'Level1',1234); 
insert into login_data values(2,'Level2',1234); 
 
---File Table(Has a list of all files)--- 
CREATE TABLE file( 
 fileid int NOT NULL AUTO_INCREMENT,fname 
varchar(30),sid int,status int, 
 FOREIGN KEY (sid) REFERENCES students(sid), 
 PRIMARY KEY (fileid) 
); 30
---Level1 Table---- 
create table level1(fileid int ,status bit(1),foreign 
key(fileid) references file(fileid),primary 
key(fileid)); 
----Level2 Table---- 
create table level1(fileid int ,status bit(1),foreign 
key(fileid) references file(fileid),primary 
key(fileid));