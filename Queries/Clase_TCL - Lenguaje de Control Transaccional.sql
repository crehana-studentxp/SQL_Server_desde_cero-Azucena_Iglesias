USE AdventureWorks2019

GO

-- EJEMPLO COMANDO BEGIN TRANSACION

BEGIN TRAN

INSERT INTO [Production].[Location2]
SELECT * FROM [Production].[Location]

-- EJEMPLO COMANDO COMMIT

COMMIT


GO

--EJEMPLO ROLLBACK

BEGIN TRAN

DELETE FROM [Production].[Product2]
WHERE [ProductNumber] ='BE-2908'

ROLLBACK