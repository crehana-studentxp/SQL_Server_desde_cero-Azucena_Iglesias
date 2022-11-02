USE AdventureWorks2019

GO

--EJEMPLO COMANDO DISTINCT 

SELECT DISTINCT
      [Name]
      ,[Color]    
  FROM [AdventureWorks2019].[Production].[Product]

GO 

-- EJEMPLO CREACIÓN DE SUBCONSULTAS

SELECT Ord.SalesOrderID, Ord.OrderDate,
    (SELECT MAX(OrdDet.UnitPrice)
     FROM Sales.SalesOrderDetail AS OrdDet
     WHERE Ord.SalesOrderID = OrdDet.SalesOrderID) AS MaxUnitPrice
FROM Sales.SalesOrderHeader AS Ord;
GO