-- DROP Statements for Rare Beauty Marketing Database
-- Run these statements to clean up/reset the database
-- Order matters due to foreign key constraints

-- Use the database
USE rare_tableau;

-- Drop Views First (no dependencies)
DROP VIEW IF EXISTS monthly_trends;
DROP VIEW IF EXISTS email_performance;
DROP VIEW IF EXISTS product_performance;
DROP VIEW IF EXISTS channel_performance;
DROP VIEW IF EXISTS daily_trends;
DROP VIEW IF EXISTS campaign_summary;

-- Drop Tables with Foreign Key Dependencies First
DROP TABLE IF EXISTS cost_structure;
DROP TABLE IF EXISTS email_specific_metrics;
DROP TABLE IF EXISTS audience_demographics;
DROP TABLE IF EXISTS campaign_product_performance;
DROP TABLE IF EXISTS daily_performance;

-- Drop Referenced Tables Last
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS campaigns;

-- Optional: Drop the entire database if you want to start completely fresh
-- DROP DATABASE IF EXISTS rare_beauty_marketing;