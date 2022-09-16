# 04191315何翔

```sql
-- ① 查询计算机系学生的学号、姓名、性别和出生日期。
SELECT sno,Sname,Ssex,Sbirthday FROM students WHERE Sdept='计算机';

-- ② 查询姓“李”的学生的学号和姓名。 
SELECT sno,Sname from students WHERE Sname LIKE '李%';

-- ③ 查询课程表中先行课为空的课程名。 
SELECT cname from courses WHERE PreCno IS NULL;

-- ④ 查询考试成绩有不及格的学生的学号。 
SELECT sno FROM sc WHERE grade < 60;

-- ⑤ 求选修了C1 课程或C2 课程的学生的学号及成绩。 
SELECT sno,grade from sc where cno='c1' or cno='c2';

-- ⑥ 查询全体计算机系学生的姓名及其年龄。
SELECT Sname,YEAR(now())-YEAR(Sbirthday) FROM students WHERE Sdept='计算机';

-- ⑦ 查询计算机系在 1986－1987 年之间出生的学生的姓名。 
SELECT Sname from students WHERE Sdept='计算机' and Sbirthday BETWEEN '1986-01-01' and '1986-12-31';

-- ⑧ 查询姓“李”且姓名为3个汉字的学生学号和姓名。 
SELECT Sno,Sname from students WHERE Sname like '李__';

-- ⑨ 查询选修了两门以上课程的学生学号与课程数。 
SELECT sno,count(cno) as 课程数 from sc WHERE sno in 
(SELECT sno from sc GROUP BY sno HAVING count(cno)>2) GROUP BY sno;

-- ⑩ 查询选修课程数大于等于2 的学生的学号、平均成绩和选课门数，并按平均成绩降序排列。
SELECT sno,count(cno) as 课程数,AVG(Grade) as avgGrade from sc WHERE sno in (SELECT sno from sc GROUP BY sno HAVING count(cno)>=2) GROUP BY sno ORDER BY avgGrade DESC;

```

