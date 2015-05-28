Customer who never orderd.
Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.

Table: Customers.

+----+-------+
| Id | Name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Table: Orders.

+----+------------+
| Id | CustomerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
Using the above tables as example, return the following:

+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+

# Write your MySQL query statement below
#LEFT JOIN
#SELECT Name FROM Customers c LEFT JOIN Orders o ON c.Id = o.CustomerId WHERE o.Id IS NULL;
#NOT IN
#SELECT Name FROM Customers c WHERE c.Id NOT IN (SELECT CustomerId FROM Orders o);
#NOT EXISTS

SELECT Name FROM Customers c WHERE NOT EXISTS (SELECT CustomerId FROM Orders o WHERE CustomerId=c.id); 