COUNT FUNCTION
SELECT * FROM [Sales].[Store]
go
SELECT COUNT(DISTINCT SalesPersonID) AS CR FROM Sales.Store



CAST AND CONVERT FUNCTIONS
SELECT CAST('123' AS INT)

SELECT CONVERT(INT, '123')

SELECT CONVERT(decimal(9, 2), '123.4')

SELECT 'Default Date: ' + CONVERT(VARCHAR(50), GETDATE(), 100)

SELECT 'US Date: ' + CONVERT(VARCHAR(50), GETDATE(), 101)



SUBQUERIES
SELECT ProductID, UnitPrice, 
(SELECT AVG(UnitPrice) FROM Sales.SalesOrderDetail) AS AvgPrice
FROM Sales.SalesOrderDetail

SELECT ProductID,
	   UnitPrice - (SELECT AVG(UnitPrice) FROM Sales.SalesOrderDetail) AS AvgPriceDiff
FROM Sales.SalesOrderDetail


--------------------------------------------------------------------------------------------

--temp tables

CREATE TABLE #new_temp_table (
firstName varchar(50),
lastName int,
employee_id int,
)

SELECT *
FROM #new_temp_table

INSERT INTO #new_temp_table
values ('Man', 2, 1)


INSERT INTO #new_temp_table
SELECT FullName, DeptID, Salary
FROM Employees

DELETE #new_temp_table

--CTE
WITH my_cte AS 
(Select DeptID, COUNT(FullName) as fullll
FROM Employees
WHERE LEN(FullName) > 7
GROUP BY DeptID)

SELECT DeptID, fullll
FROM my_cte


--String functions
CREATE TABLE new_table1
(name1 varchar(50),
 name2 varchar(50),
 astring varchar(50)
 )

 INSERT INTO new_table1
 VALUES 
 ('           1002', 'Pepe', 'Tom'),
 ('  1003', 'Bob', 'Steve'),
 (' 1006', 'Nick', 'Kyel - Fired')

 SELECT *
 FROM new_table1

 SELECT numbers, TRIM(numbers) AS new_trim
 FROM new_table1

 SELECT [some-strings], REPLACE([some-strings], '- Fired', 'helloooo') AS new_replace
 FROM new_table1


 -- Substring

 SELECT names, SUBSTRING(names, 2, 3)
 FROM new_table1
 ;

 -- Stored Procedures
 CREATE PROCEDURE new_store_p
 AS 
 SELECT *
 FROM Employees

 EXECUTE new_store_p

 ALTER PROCEDURE
 ;

 SELECT AVG(Salary)
 FROM Employees
 GROUP BY DeptID
