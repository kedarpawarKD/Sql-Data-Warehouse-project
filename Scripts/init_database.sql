
/*
===========================================================================
Create Database And Schemas
===========================================================================
Script Purpose:
	This script create a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. additionally, the script sets up theree schemas
	within the database; 'bronze', 'silver', and 'gold'.


WARNING:
	Running this scripts will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanetly deleted. proceed with caution
	and ensure you have proper backups before running this script.
*/


Use master;
Go

---- Drop and recreate the 'DataWarehouse' database
IF EXISTS (Select 1 From sys.databases Where name = 'DataWarehouse')
BEGIN
	Alter Database datawarehouse SET SINGLE_USER With Rollback IMMEDIATE;
	DROP Database DataWarehouse;
END;

--- create the 'DataWarehouse' database
Create DATABASE DataWarehouse;
Go

Use DataWarehouse;
Go

--- Create Schemas
Create Schema bronze;
GO

Create Schema silver;
GO

Create Schema gold;
GO
