--COUNT FUNCTION
--SELECT * FROM [Sales].[Store]
--go
--SELECT COUNT(DISTINCT SalesPersonID) AS CR FROM Sales.Store



--CAST AND CONVERT FUNCTIONS
--SELECT CAST('123' AS INT)

--SELECT CONVERT(INT, '123')

--SELECT CONVERT(decimal(9, 2), '123.4')

--SELECT 'Default Date: ' + CONVERT(VARCHAR(50), GETDATE(), 100)

--SELECT 'US Date: ' + CONVERT(VARCHAR(50), GETDATE(), 101)



--SUBQUERIES
--SELECT ProductID, UnitPrice, 
--(SELECT AVG(UnitPrice) FROM Sales.SalesOrderDetail) AS AvgPrice
--FROM Sales.SalesOrderDetail

--SELECT ProductID,
--	   UnitPrice - (SELECT AVG(UnitPrice) FROM Sales.SalesOrderDetail) AS AvgPriceDiff
--FROM Sales.SalesOrderDetail