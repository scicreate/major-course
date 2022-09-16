-- 创建"学生-课程"数据库，名称为StudentCource_utf8
-- 数据库字符编码使用utf8，而不是GBK

create database StudentCource_utf8 charset utf8;

#设置StudentCource_utf8为当前数据库
USE StudentCource_utf8;

#创建学生表，表名为 S
create TABLE s
(SNO char(6),             #学号
 SN  char(10) NOT NULL,   #姓名
 SD  char(16),            #所在系
 SB  datetime,            #出生时间
 SEX char(2),             #性别
 CHECK(sex IN('男','女')),#约束性别的取值
 PRIMARY  KEY(SNO)        #在表级定义主健
);

#创建课程表，表名为 C
create TABLE C
(CNO char(6) PRIMARY KEY, #课程号，在列级定义主健
 CN  char(10),            #课程名
 PC  char(6),             #先修课程名
 FOREIGN KEY(PC) REFERENCES C(CNO) #定义PC列为外键，
                                   #参照本关系的主键列CNO
);

#创建选课表，表名为 SC
CREATE TABLE SC
(SNO char(6) NOT NULL,      #学号
 CNO CHAR(6) NOT NULL,      #课程号
 GRADE DEC(4,1) DEFAULT NULL,#成绩
 PRIMARY KEY(SNO,CNO),       #在表级定义主健
 FOREIGN KEY(SNO) REFERENCES S(SNO),#定义外键SNO,参照关系S的主健SNO
 FOREIGN KEY(CNO) REFERENCES C(CNO),#定义外键CNO,参照关系C的主健CNO
 CHECK(GRADE BETWEEN 0.0 AND 100.0) #限制GRADE的取值在0.0到100.0之间
);

-- 向S表中插入示例数据
INSERT INTO S VALUES('s01','王玲','计算机','1990-06-30','女');
INSERT INTO S VALUES('s02','李渊','计算机','1990-03-23','男');
INSERT INTO S VALUES('s03','罗军','计算机','1991-08-12','男');
INSERT INTO S VALUES('s04','赵泽','计算机','1993-09-12','女');
INSERT INTO S VALUES('s05','许若',  '指挥自动化','1990-06-27','男');
INSERT INTO S VALUES('s06','王仙华','指挥自动化','1991-05-20','男');
INSERT INTO S VALUES('s07','朱祝',  '指挥自动化','1994-07-10','女');
INSERT INTO S VALUES('s08','王明','数学','1991-10-03','男');
INSERT INTO S VALUES('s09','王学之','物理','1992-01-01','男');
INSERT INTO S VALUES('s10','吴谦','指挥自动化','1991-03-25','女');
INSERT INTO S VALUES('s11','崔雪','数学','1990-07-01','女');
INSERT INTO S VALUES('s12','李想','英语','1992-08-05','男');
INSERT INTO S VALUES('s13','季然','数学','1992-09-30','女');
INSERT INTO S VALUES('s14','顾梦莎','英语','1990-04-19','女');
INSERT INTO S VALUES('s15','费汉萌','计算机','1989-08-19','男');
INSERT INTO S VALUES('s16','华庭','数学','1990-10-01','男');
INSERT INTO S VALUES('s17','亨利','英语','1991-12-12','男');
INSERT INTO S VALUES('s18','李爱民','英语','1988-03-18','男');

-- 向C表中插入示例数据
insert into c values('c01','高等数学',NULL);
insert into c values('c02','数据结构',NULL);
insert into c values('c03','操作系统','c02');
insert into c values('c04','数据库','c03');
insert into c values('c05','作战指挥','c04');
insert into c values('c06','离散数学','c01');
insert into c values('c07','信息安全','c06');
insert into c values('c08','大学英语',NULL);
insert into c values('c09','商贸英语','c08');
insert into c values('c10','大学物理',NULL);
insert into c values('c11','网络',NULL);
insert into c values('c12','kc_Design',NULL);

-- 向SC表中插入示例数据
insert into sc values('s01','c01',80);
insert into sc values('s01','c02',98);
insert into sc values('s01','c03',85);
insert into sc values('s01','c04',78);
insert into sc values('s01','c07',89);
insert into sc values('s02','c02',80);
insert into sc values('s02','c11',80);
insert into sc values('s03','c01',90);
insert into sc values('s03','c02',80);
insert into sc values('s03','c04',85);
insert into sc values('s04','c01',80);
insert into sc values('s04','c02',NULL);
insert into sc values('s04','c06',90);
insert into sc values('s04','c11',87);
insert into sc values('s05','c03',79.5);
insert into sc values('s05','c05',88);
insert into sc values('s05','c07',90);
insert into sc values('s06','c03',88);
insert into sc values('s07','c11',90);
insert into sc values('s08','c01',90);
insert into sc values('s08','c02',95);
insert into sc values('s09','c10',90);
insert into sc values('s09','c12',NULL);
insert into sc values('s10','c05',77);
insert into sc values('s11','c01',90);
insert into sc values('s12','c08',88);
insert into sc values('s12','c09',90);
