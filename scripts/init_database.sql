/* 
==============================================================
Script Purpose:
This script creates a new database and sets up three schemas within the database
==============================================================
*/
-- Creating the DataWarehouse Database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Creating the three layers or schemas 
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
