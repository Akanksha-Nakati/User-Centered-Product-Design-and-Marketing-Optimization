-- CREATE Tables for Rare Beauty Marketing Database
-- Run this after the DROP statements to recreate the table structure

-- Use the database
USE rare_tableau;

-- =====================================================
-- CAMPAIGNS TABLE (Master campaign information)
-- =====================================================
CREATE TABLE campaigns (
    campaign_id VARCHAR(50) PRIMARY KEY,
    campaign_name VARCHAR(200),
    channel VARCHAR(50),
    campaign_type VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget_allocated DECIMAL(10,2),
    target_audience VARCHAR(100),
    objective VARCHAR(100),
    status VARCHAR(20)
);

-- =====================================================
-- PRODUCTS TABLE (Extended product catalog - 50 products)
-- =====================================================
CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(200),
    category VARCHAR(100),
    subcategory VARCHAR(100),
    price DECIMAL(8,2),
    launch_date DATE,
    status VARCHAR(20)
);

-- =====================================================
-- DAILY_PERFORMANCE TABLE (Massive dataset - daily metrics for each campaign)
-- =====================================================
CREATE TABLE daily_performance (
    performance_id VARCHAR(50) PRIMARY KEY,
    campaign_id VARCHAR(50),
    date DATE,
    impressions INTEGER,
    clicks INTEGER,
    spend DECIMAL(10,2),
    conversions INTEGER,
    revenue DECIMAL(10,2),
    video_views INTEGER,
    engagements INTEGER,
    FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
);

-- =====================================================
-- CAMPAIGN_PRODUCT_PERFORMANCE TABLE
-- =====================================================
CREATE TABLE campaign_product_performance (
    id VARCHAR(50) PRIMARY KEY,
    campaign_id VARCHAR(50),
    product_id VARCHAR(50),
    date DATE,
    impressions INTEGER,
    clicks INTEGER,
    spend DECIMAL(10,2),
    conversions INTEGER,
    revenue DECIMAL(10,2),
    FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- =====================================================
-- AUDIENCE_DEMOGRAPHICS TABLE
-- =====================================================
CREATE TABLE audience_demographics (
    id VARCHAR(50) PRIMARY KEY,
    campaign_id VARCHAR(50),
    date DATE,
    age_group VARCHAR(20),
    gender VARCHAR(10),
    location VARCHAR(50),
    impressions INTEGER,
    clicks INTEGER,
    spend DECIMAL(10,2),
    conversions INTEGER,
    revenue DECIMAL(10,2),
    FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
);

-- =====================================================
-- EMAIL_SPECIFIC_METRICS TABLE
-- =====================================================
CREATE TABLE email_specific_metrics (
    id VARCHAR(50) PRIMARY KEY,
    campaign_id VARCHAR(50),
    date DATE,
    emails_sent INTEGER,
    emails_delivered INTEGER,
    opens INTEGER,
    clicks INTEGER,
    unsubscribes INTEGER,
    bounces INTEGER,
    spam_complaints INTEGER,
    conversions INTEGER,
    revenue DECIMAL(10,2),
    FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
);

-- =====================================================
-- COST_STRUCTURE TABLE
-- =====================================================
CREATE TABLE cost_structure (
    id VARCHAR(50) PRIMARY KEY,
    campaign_id VARCHAR(50),
    date DATE,
    channel VARCHAR(50),
    ad_spend DECIMAL(10,2),
    platform_fees DECIMAL(10,2),
    creative_costs DECIMAL(10,2),
    management_fees DECIMAL(10,2),
    total_cost DECIMAL(10,2),
    FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
);

-- =====================================================
-- VIEWS FOR TABLEAU ANALYSIS
-- =====================================================

-- Campaign summary view with calculated metrics
CREATE VIEW campaign_summary AS
SELECT 
    c.campaign_id,
    c.campaign_name,
    c.channel,
    c.campaign_type,
    c.target_audience,
    c.objective,
    c.status,
    SUM(dp.spend) as total_spend,
    SUM(dp.impressions) as total_impressions,
    SUM(dp.clicks) as total_clicks,
    SUM(dp.conversions) as total_conversions,
    SUM(dp.revenue) as total_revenue,
    CASE 
        WHEN SUM(dp.spend) > 0 THEN ROUND(SUM(dp.revenue) / SUM(dp.spend), 2)
        ELSE 0 
    END as roas,
    CASE 
        WHEN SUM(dp.conversions) > 0 THEN ROUND(SUM(dp.spend) / SUM(dp.conversions), 2)
        ELSE 0 
    END as cpa,
    CASE 
        WHEN SUM(dp.impressions) > 0 THEN ROUND((SUM(dp.clicks) * 100.0) / SUM(dp.impressions), 2)
        ELSE 0 
    END as ctr,
    CASE 
        WHEN SUM(dp.clicks) > 0 THEN ROUND((SUM(dp.conversions) * 100.0) / SUM(dp.clicks), 2)
        ELSE 0 
    END as conversion_rate
FROM campaigns c
LEFT JOIN daily_performance dp ON c.campaign_id = dp.campaign_id
GROUP BY c.campaign_id, c.campaign_name, c.channel, c.campaign_type, c.target_audience, c.objective, c.status;

-- Daily performance trends view
CREATE VIEW daily_trends AS
SELECT 
    dp.date,
    c.channel,
    c.campaign_name,
    dp.spend as daily_spend,
    dp.impressions as daily_impressions,
    dp.clicks as daily_clicks,
    dp.conversions as daily_conversions,
    dp.revenue as daily_revenue,
    CASE 
        WHEN dp.spend > 0 THEN ROUND(dp.revenue / dp.spend, 2)
        ELSE 0 
    END as daily_roas,
    CASE 
        WHEN dp.conversions > 0 THEN ROUND(dp.spend / dp.conversions, 2)
        ELSE 0 
    END as daily_cpa
FROM daily_performance dp
JOIN campaigns c ON dp.campaign_id = c.campaign_id
ORDER BY dp.date, c.channel;

-- Channel performance summary
CREATE VIEW channel_performance AS
SELECT 
    c.channel,
    COUNT(DISTINCT c.campaign_id) as total_campaigns,
    SUM(dp.spend) as total_spend,
    SUM(dp.impressions) as total_impressions,
    SUM(dp.clicks) as total_clicks,
    SUM(dp.conversions) as total_conversions,
    SUM(dp.revenue) as total_revenue,
    CASE 
        WHEN SUM(dp.spend) > 0 THEN ROUND(SUM(dp.revenue) / SUM(dp.spend), 2)
        ELSE 0 
    END as channel_roas,
    CASE 
        WHEN SUM(dp.conversions) > 0 THEN ROUND(SUM(dp.spend) / SUM(dp.conversions), 2)
        ELSE 0 
    END as channel_cpa,
    CASE 
        WHEN SUM(dp.impressions) > 0 THEN ROUND((SUM(dp.clicks) * 100.0) / SUM(dp.impressions), 2)
        ELSE 0 
    END as channel_ctr
FROM campaigns c
LEFT JOIN daily_performance dp ON c.campaign_id = dp.campaign_id
GROUP BY c.channel
ORDER BY total_revenue DESC;

-- Product performance view
CREATE VIEW product_performance AS
SELECT 
    p.product_id,
    p.product_name,
    p.category,
    p.subcategory,
    p.price,
    c.channel,
    SUM(cpp.spend) as product_spend,
    SUM(cpp.conversions) as product_conversions,
    SUM(cpp.revenue) as product_revenue,
    CASE 
        WHEN SUM(cpp.spend) > 0 THEN ROUND(SUM(cpp.revenue) / SUM(cpp.spend), 2)
        ELSE 0 
    END as product_roas,
    CASE 
        WHEN SUM(cpp.conversions) > 0 THEN ROUND(SUM(cpp.spend) / SUM(cpp.conversions), 2)
        ELSE 0 
    END as product_cpa
FROM campaign_product_performance cpp
JOIN products p ON cpp.product_id = p.product_id
JOIN campaigns c ON cpp.campaign_id = c.campaign_id
GROUP BY p.product_id, p.product_name, p.category, p.subcategory, p.price, c.channel
ORDER BY product_revenue DESC;

-- Email specific performance view
CREATE VIEW email_performance AS
SELECT 
    c.campaign_name,
    c.campaign_type,
    esm.date,
    esm.emails_sent,
    esm.emails_delivered,
    esm.opens,
    esm.clicks,
    esm.conversions,
    esm.revenue,
    esm.unsubscribes,
    esm.bounces,
    esm.spam_complaints,
    CASE 
        WHEN esm.emails_delivered > 0 THEN ROUND((esm.opens * 100.0) / esm.emails_delivered, 2)
        ELSE 0 
    END as open_rate,
    CASE 
        WHEN esm.opens > 0 THEN ROUND((esm.clicks * 100.0) / esm.opens, 2)
        ELSE 0 
    END as click_rate,
    CASE 
        WHEN esm.clicks > 0 THEN ROUND((esm.conversions * 100.0) / esm.clicks, 2)
        ELSE 0 
    END as conversion_rate,
    CASE 
        WHEN esm.emails_delivered > 0 THEN ROUND((esm.unsubscribes * 100.0) / esm.emails_delivered, 4)
        ELSE 0 
    END as unsubscribe_rate,
    CASE 
        WHEN esm.emails_sent > 0 THEN ROUND((esm.bounces * 100.0) / esm.emails_sent, 4)
        ELSE 0 
    END as bounce_rate
FROM email_specific_metrics esm
JOIN campaigns c ON esm.campaign_id = c.campaign_id
ORDER BY esm.date DESC;

-- Monthly performance trends
CREATE VIEW monthly_trends AS
SELECT 
    YEAR(dp.date) as year,
    MONTH(dp.date) as month,
    MONTHNAME(dp.date) as month_name,
    c.channel,
    SUM(dp.spend) as monthly_spend,
    SUM(dp.impressions) as monthly_impressions,
    SUM(dp.clicks) as monthly_clicks,
    SUM(dp.conversions) as monthly_conversions,
    SUM(dp.revenue) as monthly_revenue,
    CASE 
        WHEN SUM(dp.spend) > 0 THEN ROUND(SUM(dp.revenue) / SUM(dp.spend), 2)
        ELSE 0 
    END as monthly_roas
FROM daily_performance dp
JOIN campaigns c ON dp.campaign_id = c.campaign_id
GROUP BY YEAR(dp.date), MONTH(dp.date), MONTHNAME(dp.date), c.channel
ORDER BY year, month, c.channel;