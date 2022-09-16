create database test;

use test;

create table Students
(Sno char(7) primary key,
 Sname varchar(10),
 Ssex char(2) default '男',
 Sbirthday date,
 Sdept varchar(12),
 Memo varchar(30)
);

create table Courses
(Cno varchar(4) primary key,
 Cname varchar(20),
 PreCno varchar(4),
 Credit tinyint
);

create table SC
(Sno char(7), 
 Cno varchar(4), 
 Grade tinyint,
 foreign key(sno) references Students(Sno),
 foreign key(cno) references Courses(Cno),
 primary key(Sno,Cno)
);

insert into students values('0602001','钟耀华','男','1987-05-01','计算机','优秀毕业生');
insert into students values('0602002','吴佳硕','女','1987-03-24','计算机','爱好:音乐');
insert into students values('0602003','吴纯斌','男','1988-07-01','计算机',null);
insert into students values('0701001','王腾飞','男','1988-05-04','机电','爱好:音乐');
insert into students values('0701002','林师微','女','1987-04-03','机电','爱好:体育');
insert into students values('0701003','李乐怡','女','1986-03-03','机电',null);
insert into students values('0703001','李奇'  ,'男','1988-09-17','工商管理',null);	

insert into Courses values('C1','数据结构',  NULL,4);
insert into Courses values('C2','数据库原理','C1',4);
insert into Courses values('C3','大型数据库','C2',3);
insert into Courses values('C4','高尔夫'   , NULL,1);

insert into SC values('0602001','C1',61);
insert into SC values('0602001','C2',72);
insert into SC values('0602001','C3',88);
insert into SC values('0602002','C1',null);
insert into SC values('0602002','C2',61);
insert into SC values('0701001','C1',50);
insert into SC values('0701001','C2',null);
insert into SC values('0701002','C3',78);
insert into SC values('0701003','C1',52);
insert into SC values('0701003','C3',87);