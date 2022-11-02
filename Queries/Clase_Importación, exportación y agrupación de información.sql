USE AdventureWorks2019
GO
-- EJEMPLO GROUP BY
SELECT [SalesOrderID]
      ,[Name] AS Product
      ,SUM([OrderQty]*[UnitPrice]) AS Total
FROM [Sales].[SalesOrderDetail] S
INNER JOIN [Production].[Product] P
         ON S.[ProductID] = P.[ProductID]
GROUP BY [Name] ,[SalesOrderID]
ORDER BY [SalesOrderID]
 
 GO

 -- EJEMPLO HAVING

SELECT SalesOrderID, SUM(LineTotal) AS SubTotal  
FROM Sales.SalesOrderDetail  
GROUP BY SalesOrderID  
HAVING SUM([OrderQty]*[UnitPrice]) > 1500
ORDER BY SalesOrderID ;  

