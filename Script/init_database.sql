/*
---------------------------------------------------------------------
Create Database and Schemas
---------------------------------------------------=================
Script purpose:
This script creates a new database named 'Datawarehouse'  after checking if the database exists. It is dropped and recreated. The script also sets up three schemas: bronze, silver and gold.

*/


--Creating Database 'Datawarehouse'


USE master;
GO

--Drop DB if already exist
IF EXISTS (SELECT 1 FROM sys.databases WHERE name ='DataWarehouse')

BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;

END;
GO
--create the Datawarehouse db
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;

GO

-- Create schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
