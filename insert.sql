-- CORRECTED INSERT Data for Rare Beauty Marketing Database
-- This version fixes column count mismatches

-- Use the database
USE rare_tableau;

-- =====================================================
-- CLEAR EXISTING DATA (Optional - run if needed)
-- =====================================================
-- DELETE FROM cost_structure;
-- DELETE FROM email_specific_metrics;
-- DELETE FROM audience_demographics;
-- DELETE FROM campaign_product_performance;
-- DELETE FROM daily_performance;
-- DELETE FROM products;
-- DELETE FROM campaigns;

-- =====================================================
-- INSERT CAMPAIGNS DATA (60 campaigns)
-- =====================================================

INSERT INTO campaigns (campaign_id, campaign_name, channel, campaign_type, start_date, end_date, budget_allocated, target_audience, objective, status) VALUES
-- Google Ads Campaigns (15 campaigns)
('GA001', 'Holiday Lip Collection - Search', 'Google Ads', 'Search Campaign', '2024-06-01', '2024-12-31', 85000.00, 'Beauty Enthusiasts 18-35', 'Sales', 'Active'),
('GA002', 'Soft Pinch Blush - Display', 'Google Ads', 'Display Campaign', '2024-06-15', '2024-12-15', 65000.00, 'Millennials 25-40', 'Brand Awareness', 'Active'),
('GA003', 'Foundation Match - Shopping', 'Google Ads', 'Shopping Campaign', '2024-06-01', '2024-12-31', 78000.00, 'All Ages', 'Sales', 'Active'),
('GA004', 'Brand Awareness - Video', 'Google Ads', 'Video Campaign', '2024-07-01', '2024-12-31', 55000.00, 'Gen Z 16-24', 'Brand Awareness', 'Active'),
('GA005', 'Summer Glow Collection', 'Google Ads', 'Search Campaign', '2024-06-01', '2024-09-30', 42000.00, 'Beauty Lovers 20-35', 'Sales', 'Completed'),
('GA006', 'Back to School Beauty', 'Google Ads', 'Display Campaign', '2024-08-01', '2024-09-30', 35000.00, 'Students 16-22', 'Brand Awareness', 'Completed'),
('GA007', 'Fall Color Trends', 'Google Ads', 'Shopping Campaign', '2024-09-01', '2024-11-30', 48000.00, 'Beauty Enthusiasts 22-40', 'Sales', 'Active'),
('GA008', 'Mascara Focus Campaign', 'Google Ads', 'Search Campaign', '2024-07-15', '2024-12-31', 38000.00, 'Beauty Beginners 18-28', 'Sales', 'Active'),
('GA009', 'Concealer Collection Push', 'Google Ads', 'Shopping Campaign', '2024-08-01', '2024-12-31', 44000.00, 'Working Professionals 25-45', 'Sales', 'Active'),
('GA010', 'Holiday Gift Sets', 'Google Ads', 'Search Campaign', '2024-10-01', '2024-12-31', 62000.00, 'Gift Buyers 25-50', 'Sales', 'Active'),
('GA011', 'Retargeting - Website Visitors', 'Google Ads', 'Display Campaign', '2024-06-01', '2024-12-31', 28000.00, 'Website Visitors', 'Sales', 'Active'),
('GA012', 'YouTube Beauty Tutorials', 'Google Ads', 'Video Campaign', '2024-07-01', '2024-12-31', 52000.00, 'Beauty Learners 16-35', 'Engagement', 'Active'),
('GA013', 'Competitor Keywords', 'Google Ads', 'Search Campaign', '2024-06-15', '2024-12-31', 34000.00, 'Competitor Shoppers', 'Sales', 'Active'),
('GA014', 'Local Store Promotion', 'Google Ads', 'Local Campaign', '2024-08-01', '2024-12-31', 25000.00, 'Local Shoppers', 'Store Visits', 'Active'),
('GA015', 'Mobile App Downloads', 'Google Ads', 'App Campaign', '2024-09-01', '2024-12-31', 18000.00, 'Mobile Users 18-35', 'App Installs', 'Active'),

-- Meta Ads Campaigns (18 campaigns)
('META001', 'Holiday Collection Launch', 'Meta Ads', 'Conversion Campaign', '2024-06-01', '2024-12-31', 95000.00, 'Beauty Lovers 18-34', 'Sales', 'Active'),
('META002', 'Influencer Collaboration - Summer', 'Meta Ads', 'Brand Awareness', '2024-06-01', '2024-08-31', 68000.00, 'Gen Z 16-28', 'Brand Awareness', 'Completed'),
('META003', 'Retargeting - Cart Abandoners', 'Meta Ads', 'Retargeting', '2024-06-01', '2024-12-31', 45000.00, 'Website Visitors', 'Sales', 'Active'),
('META004', 'New Product Teasers', 'Meta Ads', 'Video Views', '2024-07-15', '2024-12-31', 38000.00, 'Beauty Enthusiasts 18-35', 'Engagement', 'Active'),
('META005', 'Instagram Story Ads', 'Meta Ads', 'Reach Campaign', '2024-06-01', '2024-12-31', 42000.00, 'Instagram Users 18-30', 'Brand Awareness', 'Active'),
('META006', 'Facebook Lead Generation', 'Meta Ads', 'Lead Generation', '2024-07-01', '2024-12-31', 35000.00, 'Newsletter Signups 20-45', 'Leads', 'Active'),
('META007', 'Lookalike Audiences', 'Meta Ads', 'Conversion Campaign', '2024-08-01', '2024-12-31', 58000.00, 'Lookalike - VIP Customers', 'Sales', 'Active'),
('META008', 'Reels Promotion', 'Meta Ads', 'Video Views', '2024-06-15', '2024-12-31', 32000.00, 'Social Media Users 16-28', 'Engagement', 'Active'),
('META009', 'Catalog Sales Push', 'Meta Ads', 'Catalog Sales', '2024-07-01', '2024-12-31', 52000.00, 'Previous Customers', 'Sales', 'Active'),
('META010', 'Event Promotion', 'Meta Ads', 'Event Responses', '2024-09-01', '2024-11-30', 22000.00, 'Local Event Attendees', 'Event Responses', 'Completed'),
('META011', 'Messenger Ads', 'Meta Ads', 'Messages', '2024-08-01', '2024-12-31', 28000.00, 'Customer Service Inquiries', 'Messages', 'Active'),
('META012', 'Dynamic Product Ads', 'Meta Ads', 'Catalog Sales', '2024-06-01', '2024-12-31', 48000.00, 'Website Visitors', 'Sales', 'Active'),
('META013', 'Seasonal Trend Campaign', 'Meta Ads', 'Conversion Campaign', '2024-09-01', '2024-12-31', 44000.00, 'Trend Followers 18-32', 'Sales', 'Active'),
('META014', 'Video Tutorial Series', 'Meta Ads', 'ThruPlay', '2024-07-01', '2024-12-31', 36000.00, 'Beauty Learners 16-40', 'Video Views', 'Active'),
('META015', 'Customer Testimonials', 'Meta Ads', 'Brand Awareness', '2024-08-15', '2024-12-31', 25000.00, 'Social Proof Seekers', 'Brand Awareness', 'Active'),
('META016', 'International Expansion', 'Meta Ads', 'Conversion Campaign', '2024-10-01', '2024-12-31', 55000.00, 'International Beauty Lovers', 'Sales', 'Active'),
('META017', 'User Generated Content', 'Meta Ads', 'Engagement', '2024-09-15', '2024-12-31', 18000.00, 'Community Builders 18-35', 'Engagement', 'Active'),
('META018', 'Flash Sale Promotions', 'Meta Ads', 'Conversion Campaign', '2024-11-01', '2024-12-31', 32000.00, 'Deal Seekers', 'Sales', 'Active'),

-- Pinterest Ads Campaigns (12 campaigns)
('PIN001', 'Holiday Makeup Looks', 'Pinterest Ads', 'Shopping Campaign', '2024-06-01', '2024-12-31', 48000.00, 'Beauty DIY 20-45', 'Sales', 'Active'),
('PIN002', 'Everyday Beauty Inspiration', 'Pinterest Ads', 'Awareness Campaign', '2024-06-01', '2024-12-31', 38000.00, 'Beauty Seekers 22-38', 'Brand Awareness', 'Active'),
('PIN003', 'Tutorial Content Promotion', 'Pinterest Ads', 'Traffic Campaign', '2024-06-15', '2024-12-31', 32000.00, 'DIY Beauty 18-40', 'Traffic', 'Active'),
('PIN004', 'Seasonal Color Palettes', 'Pinterest Ads', 'Shopping Campaign', '2024-07-01', '2024-11-30', 28000.00, 'Color Enthusiasts 20-42', 'Sales', 'Active'),
('PIN005', 'Wedding Beauty Looks', 'Pinterest Ads', 'Traffic Campaign', '2024-06-01', '2024-12-31', 35000.00, 'Brides & Wedding Party 22-40', 'Traffic', 'Active'),
('PIN006', 'Product Close-ups', 'Pinterest Ads', 'Shopping Campaign', '2024-08-01', '2024-12-31', 24000.00, 'Product Researchers 20-45', 'Sales', 'Active'),
('PIN007', 'Before & After Transformations', 'Pinterest Ads', 'Awareness Campaign', '2024-07-15', '2024-12-31', 26000.00, 'Transformation Seekers 18-50', 'Brand Awareness', 'Active'),
('PIN008', 'Gift Guide Collections', 'Pinterest Ads', 'Shopping Campaign', '2024-10-01', '2024-12-31', 42000.00, 'Gift Shoppers 25-50', 'Sales', 'Active'),
('PIN009', 'Trend Forecasting Pins', 'Pinterest Ads', 'Traffic Campaign', '2024-09-01', '2024-12-31', 22000.00, 'Trend Watchers 18-35', 'Traffic', 'Active'),
('PIN010', 'Product Styling Ideas', 'Pinterest Ads', 'Shopping Campaign', '2024-08-15', '2024-12-31', 30000.00, 'Style Enthusiasts 20-40', 'Sales', 'Active'),
('PIN011', 'Sustainable Beauty Content', 'Pinterest Ads', 'Awareness Campaign', '2024-09-01', '2024-12-31', 18000.00, 'Eco-conscious 22-45', 'Brand Awareness', 'Active'),
('PIN012', 'Celebrity Looks Recreation', 'Pinterest Ads', 'Traffic Campaign', '2024-10-15', '2024-12-31', 25000.00, 'Celebrity Beauty Fans 16-35', 'Traffic', 'Active'),

-- Email Marketing Campaigns (15 campaigns)
('EMAIL001', 'Holiday VIP Early Access', 'Email Marketing', 'Promotional', '2024-06-01', '2024-12-31', 15000.00, 'VIP Customers', 'Sales', 'Active'),
('EMAIL002', 'Weekly Beauty Tips Newsletter', 'Email Marketing', 'Newsletter', '2024-06-01', '2024-12-31', 12000.00, 'All Subscribers', 'Engagement', 'Active'),
('EMAIL003', 'Abandoned Cart Recovery', 'Email Marketing', 'Automated', '2024-06-01', '2024-12-31', 10000.00, 'Cart Abandoners', 'Sales', 'Active'),
('EMAIL004', 'New Customer Welcome Series', 'Email Marketing', 'Automated', '2024-06-01', '2024-12-31', 8000.00, 'New Customers', 'Engagement', 'Active'),
('EMAIL005', 'Product Launch Announcements', 'Email Marketing', 'Promotional', '2024-07-01', '2024-12-31', 14000.00, 'Product Enthusiasts', 'Sales', 'Active'),
('EMAIL006', 'Birthday Special Offers', 'Email Marketing', 'Automated', '2024-06-01', '2024-12-31', 6000.00, 'Birthday Customers', 'Sales', 'Active'),
('EMAIL007', 'Seasonal Trend Alerts', 'Email Marketing', 'Newsletter', '2024-06-15', '2024-12-31', 9000.00, 'Trend Subscribers', 'Engagement', 'Active'),
('EMAIL008', 'Win-back Inactive Customers', 'Email Marketing', 'Re-engagement', '2024-08-01', '2024-12-31', 7500.00, 'Inactive Customers', 'Re-engagement', 'Active'),
('EMAIL009', 'Tutorial & How-to Content', 'Email Marketing', 'Educational', '2024-07-01', '2024-12-31', 8500.00, 'Tutorial Subscribers', 'Engagement', 'Active'),
('EMAIL010', 'Flash Sale Notifications', 'Email Marketing', 'Promotional', '2024-09-01', '2024-12-31', 11000.00, 'Deal Subscribers', 'Sales', 'Active'),
('EMAIL011', 'Customer Review Requests', 'Email Marketing', 'Automated', '2024-06-01', '2024-12-31', 5000.00, 'Recent Customers', 'Reviews', 'Active'),
('EMAIL012', 'Loyalty Program Updates', 'Email Marketing', 'Transactional', '2024-08-01', '2024-12-31', 6500.00, 'Loyalty Members', 'Engagement', 'Active'),
('EMAIL013', 'Influencer Collaboration Announcements', 'Email Marketing', 'Newsletter', '2024-09-15', '2024-12-31', 4500.00, 'Influencer Followers', 'Engagement', 'Active'),
('EMAIL014', 'Restocked Item Alerts', 'Email Marketing', 'Automated', '2024-06-01', '2024-12-31', 3500.00, 'Waitlist Customers', 'Sales', 'Active'),
('EMAIL015', 'Survey & Feedback Collection', 'Email Marketing', 'Research', '2024-10-01', '2024-12-31', 2500.00, 'Survey Participants', 'Feedback', 'Active');

-- =====================================================
-- INSERT PRODUCTS DATA (50 products)
-- =====================================================

INSERT INTO products (product_id, product_name, category, subcategory, price, launch_date, status) VALUES
-- Face Products (20 products)
('RB001', 'Soft Pinch Liquid Blush - Joy', 'Face', 'Blush', 20.00, '2023-03-15', 'Active'),
('RB002', 'Soft Pinch Liquid Blush - Hope', 'Face', 'Blush', 20.00, '2023-03-15', 'Active'),
('RB003', 'Soft Pinch Liquid Blush - Grace', 'Face', 'Blush', 20.00, '2023-08-01', 'Active'),
('RB004', 'Soft Pinch Liquid Blush - Bliss', 'Face', 'Blush', 20.00, '2023-08-01', 'Active'),
('RB005', 'Soft Pinch Liquid Blush - Virtue', 'Face', 'Blush', 20.00, '2024-02-01', 'Active'),
('RB006', 'Soft Pinch Liquid Blush - Encourage', 'Face', 'Blush', 20.00, '2024-02-01', 'Active'),
('RB007', 'Liquid Touch Brightening Concealer - 110N', 'Face', 'Concealer', 21.00, '2023-09-01', 'Active'),
('RB008', 'Liquid Touch Brightening Concealer - 150C', 'Face', 'Concealer', 21.00, '2023-09-01', 'Active'),
('RB009', 'Liquid Touch Brightening Concealer - 190W', 'Face', 'Concealer', 21.00, '2023-09-01', 'Active'),
('RB010', 'Liquid Touch Brightening Concealer - 230N', 'Face', 'Concealer', 21.00, '2024-01-01', 'Active'),
('RB011', 'Liquid Touch Brightening Concealer - 270C', 'Face', 'Concealer', 21.00, '2024-01-01', 'Active'),
('RB012', 'Positive Light Tinted Moisturizer - Fair', 'Face', 'Foundation', 25.00, '2023-08-15', 'Active'),
('RB013', 'Positive Light Tinted Moisturizer - Light', 'Face', 'Foundation', 25.00, '2023-08-15', 'Active'),
('RB014', 'Positive Light Tinted Moisturizer - Medium', 'Face', 'Foundation', 25.00, '2023-08-15', 'Active'),
('RB015', 'Positive Light Tinted Moisturizer - Deep', 'Face', 'Foundation', 25.00, '2023-08-15', 'Active'),
('RB016', 'Positive Light Tinted Moisturizer - Rich', 'Face', 'Foundation', 25.00, '2024-01-15', 'Active'),
('RB017', 'Always An Optimist Soft Radiant Powder - Light', 'Face', 'Powder', 23.00, '2024-03-01', 'Active'),
('RB018', 'Always An Optimist Soft Radiant Powder - Medium', 'Face', 'Powder', 23.00, '2024-03-01', 'Active'),
('RB019', 'Always An Optimist Soft Radiant Powder - Deep', 'Face', 'Powder', 23.00, '2024-03-01', 'Active'),
('RB020', 'Warm Wishes Effortless Bronzer Stick', 'Face', 'Bronzer', 22.00, '2024-04-01', 'Active'),

-- Lip Products (15 products)
('RB021', 'Kind Words Matte Lipstick - Brave', 'Lips', 'Lipstick', 22.00, '2023-01-10', 'Active'),
('RB022', 'Kind Words Matte Lipstick - Fearless', 'Lips', 'Lipstick', 22.00, '2023-01-10', 'Active'),
('RB023', 'Kind Words Matte Lipstick - Confident', 'Lips', 'Lipstick', 22.00, '2023-05-01', 'Active'),
('RB024', 'Kind Words Matte Lipstick - Empowered', 'Lips', 'Lipstick', 22.00, '2023-05-01', 'Active'),
('RB025', 'Kind Words Matte Lipstick - Genuine', 'Lips', 'Lipstick', 22.00, '2024-01-01', 'Active'),
('RB026', 'Always Perfect Lip Cream - Nearly Neutral', 'Lips', 'Lip Cream', 18.00, '2023-11-01', 'Active'),
('RB027', 'Always Perfect Lip Cream - Softly Said', 'Lips', 'Lip Cream', 18.00, '2023-11-01', 'Active'),
('RB028', 'Always Perfect Lip Cream - Honestly', 'Lips', 'Lip Cream', 18.00, '2024-02-01', 'Active'),
('RB029', 'Soft Matte Lip Cream - Inspire', 'Lips', 'Lip Cream', 18.00, '2024-04-01', 'Active'),
('RB030', 'Soft Matte Lip Cream - Motivate', 'Lips', 'Lip Cream', 18.00, '2024-04-01', 'Active'),
('RB031', 'Holiday Lip Set - Limited Edition', 'Lips', 'Gift Set', 45.00, '2024-10-15', 'Active'),
('RB032', 'Lip Souffle Matte Lip Cream - Grateful', 'Lips', 'Lip Cream', 20.00, '2024-05-01', 'Active'),
('RB033', 'Lip Souffle Matte Lip Cream - Thankful', 'Lips', 'Lip Cream', 20.00, '2024-05-01', 'Active'),
('RB034', 'Glossy Lip Balm - Clear', 'Lips', 'Lip Balm', 14.00, '2024-06-01', 'Active'),
('RB035', 'Glossy Lip Balm - Tinted Pink', 'Lips', 'Lip Balm', 14.00, '2024-06-01', 'Active'),

-- Eye Products (10 products)
('RB036', 'Perfect Strokes Mascara - Black', 'Eyes', 'Mascara', 19.00, '2023-02-01', 'Active'),
('RB037', 'Perfect Strokes Mascara - Brown', 'Eyes', 'Mascara', 19.00, '2023-02-01', 'Active'),
('RB038', 'Perfect Strokes Volumizing Mascara - Black', 'Eyes', 'Mascara', 21.00, '2024-03-01', 'Active'),
('RB039', 'Brow Harmony Pencil - Soft Black', 'Eyes', 'Brow', 16.00, '2023-07-01', 'Active'),
('RB040', 'Brow Harmony Pencil - Dark Brown', 'Eyes', 'Brow', 16.00, '2023-07-01', 'Active'),
('RB041', 'Brow Harmony Pencil - Medium Brown', 'Eyes', 'Brow', 16.00, '2023-07-01', 'Active'),
('RB042', 'Eyeshadow Palette - Warm Neutrals', 'Eyes', 'Eyeshadow', 28.00, '2024-03-01', 'Active'),
('RB043', 'Eyeshadow Palette - Cool Tones', 'Eyes', 'Eyeshadow', 28.00, '2024-03-01', 'Active'),
('RB044', 'Liquid Eyeliner - Black', 'Eyes', 'Eyeliner', 17.00, '2024-04-15', 'Active'),
('RB045', 'Liquid Eyeliner - Brown', 'Eyes', 'Eyeliner', 17.00, '2024-04-15', 'Active'),

-- Body & Skincare Products (5 products)
('RB046', 'Find Comfort Body Lotion', 'Body', 'Skincare', 18.00, '2023-06-01', 'Active'),
('RB047', 'Mental Health Hand Cream', 'Body', 'Skincare', 12.00, '2023-06-01', 'Active'),
('RB048', 'Gentle Cleansing Face Wash', 'Skincare', 'Cleanser', 24.00, '2024-01-01', 'Active'),
('RB049', 'Hydrating Face Serum', 'Skincare', 'Serum', 32.00, '2024-01-01', 'Active'),
('RB050', 'Daily Moisturizer with SPF', 'Skincare', 'Moisturizer', 28.00, '2024-02-15', 'Active');

-- =====================================================
-- INSERT DAILY_PERFORMANCE DATA (Corrected)
-- =====================================================

INSERT INTO daily_performance (performance_id, campaign_id, date, impressions, clicks, spend, conversions, revenue, video_views, engagements) VALUES

-- ===== JUNE 2024 PERFORMANCE DATA =====

-- Google Ads GA001 - Holiday Lip Collection (Sample June data)
('GA001_20240601', 'GA001', '2024-06-01', 42000, 2100, 785.00, 42, 2520.00, 0, 0),
('GA001_20240602', 'GA001', '2024-06-02', 45000, 2250, 832.00, 48, 2880.00, 0, 0),
('GA001_20240603', 'GA001', '2024-06-03', 48000, 2400, 898.00, 52, 3120.00, 0, 0),
('GA001_20240604', 'GA001', '2024-06-04', 44000, 2200, 825.00, 45, 2700.00, 0, 0),
('GA001_20240605', 'GA001', '2024-06-05', 46000, 2300, 865.00, 49, 2940.00, 0, 0),
('GA001_20240615', 'GA001', '2024-06-15', 53000, 2650, 985.00, 62, 3720.00, 0, 0),
('GA001_20240630', 'GA001', '2024-06-30', 56000, 2800, 1025.00, 65, 3900.00, 0, 0),

-- Meta Ads META001 - Holiday Collection Launch (Sample June data)
('META001_20240601', 'META001', '2024-06-01', 85000, 3400, 720.00, 68, 2720.00, 0, 1200),
('META001_20240602', 'META001', '2024-06-02', 87000, 3480, 735.00, 70, 2800.00, 0, 1240),
('META001_20240603', 'META001', '2024-06-03', 89000, 3560, 752.00, 73, 2920.00, 0, 1285),
('META001_20240615', 'META001', '2024-06-15', 97000, 3880, 815.00, 83, 3320.00, 0, 1435),
('META001_20240630', 'META001', '2024-06-30', 99000, 3960, 845.00, 88, 3520.00, 0, 1470),

-- Pinterest PIN001 - Holiday Makeup Looks (Sample June data)  
('PIN001_20240601', 'PIN001', '2024-06-01', 65000, 1950, 285.00, 28, 1400.00, 0, 950),
('PIN001_20240602', 'PIN001', '2024-06-02', 67000, 2010, 295.00, 30, 1500.00, 0, 980),
('PIN001_20240615', 'PIN001', '2024-06-15', 77000, 2310, 352.00, 40, 2000.00, 0, 1175),
('PIN001_20240630', 'PIN001', '2024-06-30', 79000, 2370, 368.00, 42, 2100.00, 0, 1220),

-- Email EMAIL001 - Holiday VIP Early Access (Sample June data)
('EMAIL001_20240601', 'EMAIL001', '2024-06-01', 25000, 3750, 125.00, 187, 3740.00, 0, 0),
('EMAIL001_20240615', 'EMAIL001', '2024-06-15', 30000, 4500, 150.00, 225, 4500.00, 0, 0),
('EMAIL001_20240630', 'EMAIL001', '2024-06-30', 34000, 5100, 170.00, 255, 5100.00, 0, 0),

-- ===== JULY TO NOVEMBER SAMPLE DATA =====

-- July samples (showing growth trends)
('GA001_20240715', 'GA001', '2024-07-15', 65000, 3250, 1185.00, 78, 4680.00, 0, 0),
('GA001_20240731', 'GA001', '2024-07-31', 68000, 3400, 1245.00, 82, 4920.00, 0, 0),
('META001_20240715', 'META001', '2024-07-15', 108000, 4320, 925.00, 98, 3920.00, 0, 1650),
('META001_20240731', 'META001', '2024-07-31', 112000, 4480, 965.00, 104, 4160.00, 0, 1720),
('PIN001_20240715', 'PIN001', '2024-07-15', 85000, 2550, 395.00, 47, 2350.00, 0, 1320),
('PIN001_20240731', 'PIN001', '2024-07-31', 89000, 2670, 415.00, 51, 2550.00, 0, 1390),
('EMAIL001_20240715', 'EMAIL001', '2024-07-15', 38000, 5700, 155.00, 285, 5700.00, 0, 0),

-- August samples
('GA001_20240815', 'GA001', '2024-08-15', 73000, 3650, 1335.00, 89, 5340.00, 0, 0),
('GA001_20240831', 'GA001', '2024-08-31', 76000, 3800, 1395.00, 94, 5640.00, 0, 0),
('META001_20240815', 'META001', '2024-08-15', 118000, 4720, 1025.00, 112, 4480.00, 0, 1850),
('META001_20240831', 'META001', '2024-08-31', 122000, 4880, 1065.00, 118, 4720.00, 0, 1920),
('PIN001_20240815', 'PIN001', '2024-08-15', 96000, 2880, 455.00, 58, 2900.00, 0, 1520),
('PIN001_20240831', 'PIN001', '2024-08-31', 100000, 3000, 475.00, 62, 3100.00, 0, 1590),
('EMAIL001_20240815', 'EMAIL001', '2024-08-15', 42000, 6300, 182.00, 315, 6300.00, 0, 0),

-- September samples (peak season starts)
('GA001_20240915', 'GA001', '2024-09-15', 81000, 4050, 1485.00, 102, 6120.00, 0, 0),
('GA001_20240930', 'GA001', '2024-09-30', 84000, 4200, 1545.00, 106, 6360.00, 0, 0),
('META001_20240915', 'META001', '2024-09-15', 128000, 5120, 1125.00, 129, 5160.00, 0, 2080),
('META001_20240930', 'META001', '2024-09-30', 132000, 5280, 1165.00, 135, 5400.00, 0, 2160),
('PIN001_20240915', 'PIN001', '2024-09-15', 108000, 3240, 515.00, 70, 3500.00, 0, 1740),
('PIN001_20240930', 'PIN001', '2024-09-30', 112000, 3360, 535.00, 74, 3700.00, 0, 1820),
('EMAIL001_20240915', 'EMAIL001', '2024-09-15', 48000, 7200, 215.00, 360, 7200.00, 0, 0),

-- October samples (holiday boost)
('GA001_20241015', 'GA001', '2024-10-15', 92000, 4600, 1705.00, 120, 7200.00, 0, 0),
('GA001_20241031', 'GA001', '2024-10-31', 96000, 4800, 1785.00, 126, 7560.00, 0, 0),
('META001_20241015', 'META001', '2024-10-15', 142000, 5680, 1275.00, 149, 5960.00, 0, 2360),
('META001_20241031', 'META001', '2024-10-31', 146000, 5840, 1325.00, 156, 6240.00, 0, 2440),
('PIN001_20241015', 'PIN001', '2024-10-15', 124000, 3720, 595.00, 84, 4200.00, 0, 2020),
('PIN001_20241031', 'PIN001', '2024-10-31', 130000, 3900, 625.00, 90, 4500.00, 0, 2120),
('EMAIL001_20241015', 'EMAIL001', '2024-10-15', 55000, 8250, 252.00, 412, 8240.00, 0, 0),

-- November samples (peak holiday season)
('GA001_20241115', 'GA001', '2024-11-15', 108000, 5400, 2025.00, 148, 8880.00, 0, 0),
('GA001_20241130', 'GA001', '2024-11-30', 115000, 5750, 2165.00, 159, 9540.00, 0, 0),
('META001_20241115', 'META001', '2024-11-15', 162000, 6480, 1495.00, 178, 7120.00, 0, 2720),
('META001_20241130', 'META001', '2024-11-30', 170000, 6800, 1575.00, 189, 7560.00, 0, 2860),
('PIN001_20241115', 'PIN001', '2024-11-15', 145000, 4350, 705.00, 105, 5250.00, 0, 2420),
('PIN001_20241130', 'PIN001', '2024-11-30', 152000, 4560, 745.00, 112, 5600.00, 0, 2560),
('EMAIL001_20241115', 'EMAIL001', '2024-11-15', 62000, 9300, 295.00, 465, 9300.00, 0, 0),
('EMAIL001_20241130', 'EMAIL001', '2024-11-30', 65000, 9750, 315.00, 487, 9740.00, 0, 0),

-- Additional campaign samples
('GA002_20240615', 'GA002', '2024-06-15', 125000, 1250, 435.00, 18, 1260.00, 0, 0),
('GA002_20240715', 'GA002', '2024-07-15', 135000, 1350, 485.00, 24, 1680.00, 0, 0),
('GA002_20240815', 'GA002', '2024-08-15', 145000, 1450, 525.00, 28, 1960.00, 0, 0),
('GA002_20240915', 'GA002', '2024-09-15', 152000, 1520, 565.00, 32, 2240.00, 0, 0),
('GA002_20241015', 'GA002', '2024-10-15', 158000, 1580, 605.00, 36, 2520.00, 0, 0),
('GA002_20241115', 'GA002', '2024-11-15', 165000, 1650, 645.00, 40, 2800.00, 0, 0),

('META002_20240615', 'META002', '2024-06-15', 185000, 5550, 498.00, 34, 1360.00, 26500, 2920),
('META002_20240715', 'META002', '2024-07-15', 195000, 5850, 525.00, 38, 1520.00, 29500, 3160),
('META002_20240815', 'META002', '2024-08-15', 205000, 6150, 552.00, 42, 1680.00, 32500, 3400),

('PIN002_20240615', 'PIN002', '2024-06-15', 62000, 1860, 265.00, 25, 1250.00, 0, 895),
('PIN002_20240715', 'PIN002', '2024-07-15', 68000, 2040, 298.00, 29, 1450.00, 0, 1005),
('PIN002_20240815', 'PIN002', '2024-08-15', 75000, 2250, 332.00, 34, 1700.00, 0, 1140),
('PIN002_20240915', 'PIN002', '2024-09-15', 82000, 2460, 365.00, 39, 1950.00, 0, 1275),
('PIN002_20241015', 'PIN002', '2024-10-15', 88000, 2640, 398.00, 43, 2150.00, 0, 1395),
('PIN002_20241115', 'PIN002', '2024-11-15', 95000, 2850, 432.00, 48, 2400.00, 0, 1530);

-- =====================================================
-- INSERT OTHER TABLES DATA (Sample)  
-- =====================================================

-- Campaign Product Performance
INSERT INTO campaign_product_performance (id, campaign_id, product_id, date, impressions, clicks, spend, conversions, revenue) VALUES
('GA001_RB031_20240601', 'GA001', 'RB031', '2024-06-01', 18000, 900, 340.00, 18, 810.00),
('GA001_RB021_20240601', 'GA001', 'RB021', '2024-06-01', 12000, 600, 225.00, 12, 264.00),
('GA001_RB022_20240601', 'GA001', 'RB022', '2024-06-01', 12000, 600, 220.00, 12, 264.00),
('META001_RB031_20240601', 'META001', 'RB031', '2024-06-01', 35000, 1400, 300.00, 28, 1260.00),
('META001_RB001_20240601', 'META001', 'RB001', '2024-06-01', 25000, 1000, 210.00, 20, 400.00),
('PIN001_RB001_20240601', 'PIN001', 'RB001', '2024-06-01', 30000, 900, 125.00, 12, 240.00),
('PIN001_RB031_20240601', 'PIN001', 'RB031', '2024-06-01', 35000, 1050, 160.00, 16, 720.00);

-- Audience Demographics
INSERT INTO audience_demographics (id, campaign_id, date, age_group, gender, location, impressions, clicks, spend, conversions, revenue) VALUES
('GA001_18-24_F_US_20240601', 'GA001', '2024-06-01', '18-24', 'Female', 'United States', 16800, 840, 315.00, 17, 1020.00),
('GA001_25-34_F_US_20240601', 'GA001', '2024-06-01', '25-34', 'Female', 'United States', 18900, 945, 355.00, 19, 1140.00),
('GA001_35-44_F_US_20240601', 'GA001', '2024-06-01', '35-44', 'Female', 'United States', 6300, 315, 115.00, 6, 360.00),
('META001_18-24_F_US_20240601', 'META001', '2024-06-01', '18-24', 'Female', 'United States', 34000, 1360, 288.00, 27, 1080.00),
('META001_25-34_F_US_20240601', 'META001', '2024-06-01', '25-34', 'Female', 'United States', 38250, 1530, 324.00, 31, 1240.00);

-- Email Specific Metrics
INSERT INTO email_specific_metrics (id, campaign_id, date, emails_sent, emails_delivered, opens, clicks, unsubscribes, bounces, spam_complaints, conversions, revenue) VALUES
('EMAIL001_20240601', 'EMAIL001', '2024-06-01', 25000, 24750, 8925, 3750, 25, 125, 2, 187, 3740.00),
('EMAIL001_20240615', 'EMAIL001', '2024-06-15', 30000, 29700, 10692, 4500, 30, 150, 4, 225, 4500.00),
('EMAIL002_20240601', 'EMAIL002', '2024-06-01', 45000, 44550, 12465, 2250, 15, 225, 1, 45, 900.00),
('EMAIL003_20240601', 'EMAIL003', '2024-06-01', 8500, 8415, 1683, 850, 8, 42, 0, 127, 2540.00);

-- Cost Structure
INSERT INTO cost_structure (id, campaign_id, date, channel, ad_spend, platform_fees, creative_costs, management_fees, total_cost) VALUES
('GA001_COST_20240601', 'GA001', '2024-06-01', 'Google Ads', 785.00, 0.00, 50.00, 78.50, 913.50),
('GA001_COST_20240615', 'GA001', '2024-06-15', 'Google Ads', 985.00, 0.00, 68.00, 98.50, 1151.50),
('META001_COST_20240601', 'META001', '2024-06-01', 'Meta Ads', 720.00, 36.00, 60.00, 72.00, 888.00),
('META001_COST_20240615', 'META001', '2024-06-15', 'Meta Ads', 815.00, 40.75, 68.00, 81.50, 1005.25),
('PIN001_COST_20240601', 'PIN001', '2024-06-01', 'Pinterest Ads', 285.00, 14.25, 25.00, 28.50, 352.75),
('EMAIL001_COST_20240601', 'EMAIL001', '2024-06-01', 'Email Marketing', 125.00, 12.50, 15.00, 25.00, 177.50);