-- ============================================
-- Script to Create DataWarehouse Database
-- This script will:
-- 1. Check if the 'DataWarehouse' database exists and drop it if found
-- 2. Create a new 'DataWarehouse' database
-- 3. Create schemas: Bronze (raw data), Silver (cleaned data), Gold (curated data)
-- WARNING: Running this script will delete any existing 'DataWarehouse' database and its data.
-- ============================================

-- Check if the database 'DataWarehouse' already exists
IF EXISTS(SELECT name FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    -- Drop the existing database if it exists
    DROP DATABASE DataWareHouse;
END

-- Create a new database named 'DataWareHouse'
CREATE DATABASE DataWareHouse;

-- Switch to using the newly created database
USE DataWareHouse;

-- Create the 'Bronze' schema, typically used for raw, unprocessed data
CREATE SCHEMA Bronze;
GO

-- Create the 'Silver' schema, typically used for cleaned and transformed data
CREATE SCHEMA Silver;
GO

-- Create the 'Gold' schema, typically used for curated, aggregated, and business-ready data
CREATE SCHEMA Gold;
GO
