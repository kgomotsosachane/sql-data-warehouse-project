-- CREATE DATABASE 'DataWarehouse'

USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
 ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIADE;
 DROP DATABASE DataWarehouse;
END;

GO

CREATE DATABASE DataWarehouse;
GO

 USE DataWarehouse;
 GO

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'bronze') EXEC('CREATE SCHEMA bronze');
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'silver') EXEC('CREATE SCHEMA silver');
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'gold')   EXEC('CREATE SCHEMA gold');
GO
