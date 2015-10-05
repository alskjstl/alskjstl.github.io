---
layout: page
title:	mysql 查询
category: blog
description: 
---
# Preface

# wher

	where name IS NOT NULL;
	where name <=> NULL; # 不可以用name=NULL
	where name!=''; # not null and not empty string

# join
Refer to: http://www.codedata.com.tw/database/mysql-tutorial-5-join-union/

先构建两张表: 国家和城市

- Country(Code, Capital)
- City(id, Name)

## Inner Join
Inner Join 有两种写法：差异在把结合条件设定在where 子句或from 子句

### join via where
join结合条件 在where:

	MariaDB [test]> select * from country,city;
	+---------+---------+----+----------+
	| code    | capital | id | name     |
	+---------+---------+----+----------+
	| China   | 1       |  1 | Beijing  |
	| America | 2       |  1 | Beijing  |
	| China   | 1       |  2 | Shanghai |
	| America | 2       |  2 | Shanghai |
	+---------+---------+----+----------+

	MariaDB [test]> select * from country,city where country.capital = city.id;
	+---------+---------+----+----------+
	| code    | capital | id | name     |
	+---------+---------+----+----------+
	| China   | 1       |  1 | Beijing  |
	| America | 2       |  2 | Shanghai |
	+---------+---------+----+----------+

	MariaDB [test]> explain select * from country,city where capital = id;
	+------+-------------+---------+------+---------------+------+---------+------+------+-------------------------------------------------+
	| id   | select_type | table   | type | possible_keys | key  | key_len | ref  | rows | Extra                                           |
	+------+-------------+---------+------+---------------+------+---------+------+------+-------------------------------------------------+
	|    1 | SIMPLE      | country | ALL  | NULL          | NULL | NULL    | NULL |    2 |                                                 |
	|    1 | SIMPLE      | city    | ALL  | PRIMARY       | NULL | NULL    | NULL |    2 | Using where; Using join buffer (flat, BNL join) |
	+------+-------------+---------+------+---------------+------+---------+------+------+-------------------------------------------------+

### Inner Join
和where 过滤条件的写法是一样的

	SELECT * FROM table_name [INNER] JOIN table_name ON <condition>;

	//以下等价
	SELECT * FROM table_name [INNER] JOIN table_name ON tb1.column=tb2.column;
	SELECT * FROM table_name [INNER] JOIN table_name USING (column); //适用于同名的column

Example:

	MariaDB [test]> select code,capital,name from country JOIN city ON capital = id;
	+---------+---------+----------+
	| code    | capital | name     |
	+---------+---------+----------+
	| China   | 1       | Beijing  |
	| America | 2       | Shanghai |
	+---------+---------+----------+

condion 可以使用and or 等

	On (cond1 and cond2)

## Outer Join
对于如下数据，Inner Join 会漏掉了capital=3 ,如果不想漏掉它， 此时应该考虑`{Left| Right} OUTER Join`
Left Join 的结果集包括所有的Left, Right Join 则包括了所有的Right 结果集

	MariaDB [test]> select * from country;
	+---------+---------+
	| code    | capital |
	+---------+---------+
	| China   | 1       |
	| America | 2       |
	| England | 3       |
	+---------+---------+

### Left Join

	MariaDB [test]> select code,capital,name from country LEFT OUTER JOIN city ON capital = id;
	+---------+---------+----------+
	| code    | capital | name     |
	+---------+---------+----------+
	| China   | 1       | Beijing  |
	| America | 2       | Shanghai |
	| England | 3       | NULL     |
	+---------+---------+----------+

Right Join 则相反

# UNION 
它与Join 不一样, UNION 查询就是合并查询，

	select_statement1 UNION select_statement2 [UNION select_statement3 [...]]

UNION 要求select 的colume 数一致！

	MariaDB [test]> select * from country union select * from city;
	+---------+----------+
	| code    | capital  |
	+---------+----------+
	| China   | 1        |
	| America | 2        |
	| England | 3        |
	| 1       | Beijing  |
	| 2       | Shanghai |
	+---------+----------+

`UNION [ALL | DISTINCT]` 默认是distinct

	MariaDB [test]> select 1 union all select 1;
	+---+
	| 1 |
	+---+
	| 1 |
	| 1 |
	+---+

# sub sql

	select filed1 from (select 1 filed1,2) alias;

# Group By
对于聚合函数(clustered function)`count`, `max` 等，要想指定聚合的范围，就需要用`group by` 分组

	MariaDB [test]> select * from emp;
	+-------+------+--------+
	| name  | dept | salary |
	+-------+------+--------+
	| Jack  | RD   |   3500 |
	| Lily  | PM   |   4000 |
	| Hilo  | RD   |   5000 |
	| Jim   | PM   |   4500 |
	| Peter | PM   |   3100 |
	+-------+------+--------+

	MariaDB [test]> select  dept,max(salary) from emp group by dept;
	+------+-------------+
	| dept | max(salary) |
	+------+-------------+
	| PM   |        4500 |
	| RD   |        5000 |
	+------+-------------+

放在group by 之前：

	where

之后：

	order by
	limit
	having(相当于where)

## sum for distinct

	select sum(distinct score),count(*),score from stu; count(distinct) 与 count(*) 相互独立. score 取第一个
	select sum(distinct score),count(*) from stu group by class;//按班分

## Group with where
where 作为限定语句，必须在group 分组之前。比如只统计收入小于5000 的：

	MariaDB [test]> select  dept,max(salary) from emp  where salary < 5000 group by dept;
	+------+-------------+
	| dept | max(salary) |
	+------+-------------+
	| PM   |        4500 |
	| RD   |        3500 |
	+------+-------------+

## Group order
order 也必须放在最后：

	$ select id,name2 from city group by name2 order by id desc;
	+----+-------+
	| id | name2 |
	+----+-------+
	| 34 | 23    |
	| 33 | haha  |

## Group filter(having)
分组之后的过滤需要使用`HAVING`, 且限定只能是聚合函数(组为最小单位). 

比如过滤出员工数大于2，且平均大于3200 的部门

	MariaDB [test]> select  dept, max(salary),avg(salary) from emp group by dept having avg(salary) > 3200 and count(*) > 2;
	+------+-------------+-------------+
	| dept | max(salary) | avg(salary) |
	+------+-------------+-------------+
	| PM   |        4500 |   3866.6667 |
	+------+-------------+-------------+

## Group order by
Order by 需要放到gropu by 的后面做最后处理

## 与distinct 比较
如果id 是索引的，那么它会在mysql 内部转为`group by`: 见 http://ccvita.com/156.html
以下两条语句是等价的：

	select distinct id from table;
	select id from table group by id;
