create database donor
use donor

create table donor(userid int identity(1,1),uname varchar(25) unique,password varchar(25),gender varchar(6),lang varchar(25),state varchar(25),city varchar(25),bgroup varchar(25),phno bigint,email varchar(30));

create procedure proc_insertdonor(@b varchar(25),@c varchar(25),@d varchar(6),@e varchar(25),@f varchar(25),@g varchar(25),@h varchar(25),@i bigint,@j varchar(30))as begin
insert into donor values(@b,@c,@d,@e,@f,@g,@h,@i,@j) end;

create table states(sid varchar(5) primary key,sname varchar(35))
create procedure proc_dispstates as begin select * from states end;

create table cities(cid varchar(5) primary key,cname varchar(25),sid varchar(5) references states(sid))
create procedure proc_dispcities(@a varchar(5)) as begin select cname from cities where sid=@a end;

insert into states values
('1', 'ANDAMAN AND NICOBAR ISLANDS'),
('2', 'ANDHRA PRADESH'),
('3', 'ARUNACHAL PRADESH'),
('4', 'ASSAM'),
('5', 'BIHAR'),
('6', 'CHATTISGARH'),
('7', 'CHANDIGARH'),
('8', 'DAMAN AND DIU'),
('9', 'DELHI'),
('10', 'DADRA AND NAGAR HAVELI'),
('11', 'GOA'),
('12', 'GUJARAT'),
('13', 'HIMACHAL PRADESH'),
('14', 'HARYANA'),
('15', 'JAMMU AND KASHMIR'),
('16', 'JHARKHAND'),
('17', 'KERALA'),
('18', 'KARNATAKA'),
('19', 'LAKSHADWEEP'),
('20', 'MEGHALAYA'),
('21', 'MAHARASHTRA'),
('22', 'MANIPUR'),
('23', 'MADHYA PRADESH'),
('24', 'MIZORAM'),
('25', 'NAGALAND'),
('26', 'ORISSA'),
('27', 'PUNJAB'),
('28', 'PONDICHERRY'),
('29', 'RAJASTHAN'),
('30', 'SIKKIM'),
('31', 'TAMIL NADU'),
('32', 'TRIPURA'),
('33', 'UTTARAKHAND'),
('34', 'UTTAR PRADESH'),
('35', 'WEST BENGAL'),
('36', 'TELANGANA');

select * from states


INSERT INTO cities VALUES
('2','Anantapur', '2'),
('3','Chittoor', '2'),
('4','Karimnagar', '2'),
('5','Khammam', '2'),
('6','Krishna', '2'),
('7','Kurnool', '2'),
('8','Mahabubnagar', '2'),
('9','Medak', '2'),
('10','Nalgonda', '2'),
('11','Nellore', '2'),
('12','Nizamabad','2'),
('13','Prakasam','2'),
('14','Rangareddy','2'),
('15','Srikakulam','2'),
('16','Visakhapatnam','2'),
('17','Vizianagaram','2'),
('18','Warangal','2'),
('19','West Godavari','2');

select * from cities

create table blood(bgid int,bgname varchar(20));

insert into blood values (1,'O+'),(2,'O-'),(3,'A+'),(4,'A-'),(5,'B+'),(6,'B+'),(7,'AB+'),(8,'AB+');
create procedure proc_bgroupdisp as begin select bgname from blood end;

select * from donor
select * from cities

create table admin(userid varchar(15), password varchar(25));
insert into admin values ('Jathin','12345');
create procedure proc_adminlogin(@a varchar(15), @b varchar(25)) as begin
select count(*) from admin where userid=@a and password=@b end;

create proc proc_details as begin 
select * from donor end;

select * from blood
select * from donor

update donor set uname='Jathin' where userid=1;
create proc proc_detailsedit (@a int,@b varchar(25),@c varchar(25),@d varchar(6),@e varchar(25),@f varchar(25),@g varchar(25),@h varchar(25),@i bigint,@j varchar(30)) as begin
update donor set uname=@b,password=@c,gender=@d,lang=@e,state=@f,city=@g,bgroup=@h, phno=@i,email=@j where userid=@a end
	
create proc proc_detailsdel(@a int) as begin
delete from donor where userid=@a end;

select * from donor
delete from donor where userid=1

create proc proc_search(@a varchar(25),@b varchar(25),@c varchar(25)) as begin
select userid,uname,bgroup,phno,email,city from donor where bgroup=@a and state=@b and city=@c end;

select userid,uname,bgroup,phno,email,city from donor where bgroup='A+' and state='ANDHRA PRADESH' and city='Visakhapatnam'
drop proc proc_userlogin
create procedure proc_userlogin(@a varchar(15), @b varchar(25)) as begin
select count(*) from donor where uname=@a and password=@b end;
select count(*) from donor where uname='Jathin Kumar Reddy' and password='12345'

drop proc proc_userdetails
create proc proc_userdetails(@a varchar(25)) as begin
select userid,uname,bgroup,phno,email,city from donor where uname=@a end

create proc proc_userdetailsup(@a int,@b varchar(25),@c varchar(25),@d bigint,@e varchar(30),@f varchar(25)) as begin
update donor set uname=@b,bgroup=@c,phno=@d,email=@e,city=@f where userid=@a end

select userid,uname,bgroup,phno,email,city from donor where uname='suresh'
create proc proc_donordisp as begin select * from donor end;

create table bloodbank(sno int identity,organization varchar(25),state varchar(25),city varchar(25),phone1 bigint,phone2 bigint); 


