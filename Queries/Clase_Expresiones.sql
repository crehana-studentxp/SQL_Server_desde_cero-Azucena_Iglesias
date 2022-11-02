USE AdventureWorks2019

GO

-- EJEMPLO CASE

SELECT  [SalesOrderID]
      ,[OrderQty]
      ,CASE WHEN [OrderQty] > 5 THEN 'Apply best price' ELSE 'Same price' END ApplyDiscont
      ,[UnitPrice]
  FROM [Sales].[SalesOrderDetail]
  ORDER BY [SalesOrderID]

GO
-- EJEMPLO COALESCE

SELECT Name,
COALESCE(Color, Null, 'Not Color') AS Color  
FROM Production.Product;  

GO

-- EJEMPLO NULLIF

SELECT Name as Product, 
       MakeFlag, 
	   FinishedGoodsFlag,   
   NULLIF(MakeFlag,FinishedGoodsFlag) AS NullIfEqual  
FROM Production.Product  

GO  