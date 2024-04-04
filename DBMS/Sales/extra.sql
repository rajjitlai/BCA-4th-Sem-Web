-- Q1. Write the queries to produce order no., amount and date of all orders
select ONUM, AMOUNT, ODATE from Orders;
-- Output
-- +------+---------+------------+
-- | ONUM | AMOUNT  | ODATE      |
-- +------+---------+------------+
-- | 3001 |   17.78 | 2021-03-01 |
-- | 3003 |  676.91 | 2021-03-01 |
-- | 3002 | 1800.21 | 2021-03-01 |
-- | 3005 | 1650.54 | 2021-03-01 |
-- | 3006 | 1808.61 | 2021-03-01 |
-- | 3009 | 1719.32 | 2021-04-10 |
-- | 3007 |   57.57 | 2021-04-10 |
-- | 3008 | 7433.00 | 2021-04-11 |
-- | 3010 | 3108.59 | 2021-04-11 |
-- | 3011 | 8981.88 | 2021-04-11 |
-- +------+---------+------------+

-- Q2. Insert the row into orders table where all the rows data/values should be null (use the default values keyword)
insert into Orders values (DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
select * from Orders;
-- Output
-- +------+---------+------------+------+------+
-- | ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
-- +------+---------+------------+------+------+
-- | 3001 |   17.78 | 2021-03-01 | 2009 | 1007 |
-- | 3003 |  676.91 | 2021-03-01 | 2014 | 1006 |
-- | 3002 | 1800.21 | 2021-03-01 | 2019 | 1004 |
-- | 3005 | 1650.54 | 2021-03-01 | 2018 | 1002 |
-- | 3006 | 1808.61 | 2021-03-01 | 2016 | 1005 |
-- | 3009 | 1719.32 | 2021-04-10 | 2013 | 1008 |
-- | 3007 |   57.57 | 2021-04-10 | 2017 | 1004 |
-- | 3008 | 7433.00 | 2021-04-11 | 2020 | 1005 |
-- | 3010 | 3108.59 | 2021-04-11 | 2012 | 1002 |
-- | 3011 | 8981.88 | 2021-04-11 | 2011 | 1008 |
-- | NULL |    NULL | NULL       | NULL | NULL |
-- +------+---------+------------+------+------+

-- Q3. Produce the order no. in ascending orders/descending orders
-- Ascending
select ONUM from Orders order by ONUM asc;
-- Output
-- +------+
-- | ONUM |
-- +------+
-- | NULL |
-- | NULL |
-- | 3001 |
-- | 3002 |
-- | 3003 |
-- | 3005 |
-- | 3006 |
-- | 3007 |
-- | 3008 |
-- | 3009 |
-- | 3010 |
-- | 3011 |
-- +------+
-- Descending
select ONUM from Orders order by ONUM desc;
-- Output
-- +------+
-- | ONUM |
-- +------+
-- | 3011 |
-- | 3010 |
-- | 3009 |
-- | 3008 |
-- | 3007 |
-- | 3006 |
-- | 3005 |
-- | 3003 |
-- | 3002 |
-- | 3001 |
-- | NULL |
-- | NULL |
-- +------+

-- Q4. Update the AMOUNT values as 111.1 where ONUM=3003
update Orders set AMOUNT=111.1 where ONUM=3003;
select * from Orders;
-- Output
-- +------+---------+------------+------+------+
-- | ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
-- +------+---------+------------+------+------+
-- | 3001 |   17.78 | 2021-03-01 | 2009 | 1007 |
-- | 3003 |  111.10 | 2021-03-01 | 2014 | 1006 |
-- | 3002 | 1800.21 | 2021-03-01 | 2019 | 1004 |
-- | 3005 | 1650.54 | 2021-03-01 | 2018 | 1002 |
-- | 3006 | 1808.61 | 2021-03-01 | 2016 | 1005 |
-- | 3009 | 1719.32 | 2021-04-10 | 2013 | 1008 |
-- | 3007 |   57.57 | 2021-04-10 | 2017 | 1004 |
-- | 3008 | 7433.00 | 2021-04-11 | 2020 | 1005 |
-- | 3010 | 3108.59 | 2021-04-11 | 2012 | 1002 |
-- | 3011 | 8981.88 | 2021-04-11 | 2011 | 1008 |
-- | NULL |    NULL | NULL       | NULL | NULL |
-- | NULL |    NULL | NULL       | NULL | NULL |
-- +------+---------+------------+------+------+

-- Q5. Show all the data from Order_Table where ONUM is not NULL
-- or Q6. Produce the table where ONUM is not equal NULL
select * from Orders where ONUM!="null";
-- Output
-- +------+---------+------------+------+------+
-- | ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
-- +------+---------+------------+------+------+
-- | 3001 |   17.78 | 2021-03-01 | 2009 | 1007 |
-- | 3003 |  111.10 | 2021-03-01 | 2014 | 1006 |
-- | 3002 | 1800.21 | 2021-03-01 | 2019 | 1004 |
-- | 3005 | 1650.54 | 2021-03-01 | 2018 | 1002 |
-- | 3006 | 1808.61 | 2021-03-01 | 2016 | 1005 |
-- | 3009 | 1719.32 | 2021-04-10 | 2013 | 1008 |
-- | 3007 |   57.57 | 2021-04-10 | 2017 | 1004 |
-- | 3008 | 7433.00 | 2021-04-11 | 2020 | 1005 |
-- | 3010 | 3108.59 | 2021-04-11 | 2012 | 1002 |
-- | 3011 | 8981.88 | 2021-04-11 | 2011 | 1008 |
-- +------+---------+------------+------+------+

-- Q7. Produce ONUM values where CNUM values is equal to 2009 or 2015 or 2019
select * from Orders where ONUM!="null";
-- Output
-- +------+---------+------------+------+------+
-- | ONUM | AMOUNT  | ODATE      | CNUM | SNUM |
-- +------+---------+------------+------+------+
-- | 3001 |   17.78 | 2021-03-01 | 2009 | 1007 |
-- | 3003 |  111.10 | 2021-03-01 | 2014 | 1006 |
-- | 3002 | 1800.21 | 2021-03-01 | 2019 | 1004 |
-- | 3005 | 1650.54 | 2021-03-01 | 2018 | 1002 |
-- | 3006 | 1808.61 | 2021-03-01 | 2016 | 1005 |
-- | 3009 | 1719.32 | 2021-04-10 | 2013 | 1008 |
-- | 3007 |   57.57 | 2021-04-10 | 2017 | 1004 |
-- | 3008 | 7433.00 | 2021-04-11 | 2020 | 1005 |
-- | 3010 | 3108.59 | 2021-04-11 | 2012 | 1002 |
-- | 3011 | 8981.88 | 2021-04-11 | 2011 | 1008 |
-- +------+---------+------------+------+------+

select ONUM from Orders where CNUM=2009 or CNUM=2015 or CNUM=2019;
-- +------+
-- | onum |
-- +------+
-- | 3001 |
-- | 3002 |
-- +------+