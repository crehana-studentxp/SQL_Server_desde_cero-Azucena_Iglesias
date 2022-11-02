USE [master]
GO
CREATE LOGIN [UserTest] WITH PASSWORD=N'us123zWPO098', DEFAULT_DATABASE=[AdventureWorks2019], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [AdventureWorks2019]
GO
CREATE USER [UserTest] FOR LOGIN [UserTest]
GO
USE [AdventureWorks2019]
GO
ALTER ROLE [db_owner] ADD MEMBER [UserTest]
GO


USE AdventureWorks2019
GO

-- EJEMPLO COMANDO GRANT
GRANT SELECT ON OBJECT ::[HumanResources].[Employee] TO [UserTest];  

GO

-- EJEMPLO COMANDO REVOKE

REVOKE SELECT ON SCHEMA :: Sales TO [UserTest];

GO

-- EJEMPLO COMANDO DENY 

DENY SELECT ON OBJECT::[HumanResources].[Employee] TO [UserTest];  
GO  