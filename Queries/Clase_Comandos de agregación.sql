USE AdventureWorks2019

GO

-- EJEMPLO COUNT

SELECT COUNT(DISTINCT[SalesOrderID]) TotalOrders
FROM [Sales].[SalesOrderDetail] 

GO

--EJEMPLO MAX

SELECT MAX([UnitPrice]) AS MaxUnitPrice
FROM [Sales].[SalesOrderDetail] 

GO

--EJEMPLO MIN
SELECT MIN([UnitPrice]) AS MinUnitPrice
FROM [Sales].[SalesOrderDetail] 

GO
-- EJEMPLO SUM

SELECT SUM([OrderQty]*[UnitPrice]) AS Total
FROM [Sales].[SalesOrderDetail] 

GO

-- EJEMPLO AVG

SELECT [JobTitle]
      ,AVG([VacationHours])AS 'Average vacation hours'  
  FROM [HumanResources].[Employee]  
  GROUP BY [JobTitle]