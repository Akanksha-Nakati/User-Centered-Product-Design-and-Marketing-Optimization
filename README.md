# 💄 Rare Beauty — User-Centered Product Design & Marketing Optimization

> A case study combining UX research and marketing analytics to understand how Rare Beauty can better connect with its audience, convert visitors into buyers, and retain loyal customers.

🎨 [View Figma Prototype](https://dash-sheen-59603545.figma.site/) &nbsp;|&nbsp; 📖 [Read Medium Article](https://medium.com/@nakati.akanksha/rare-beautys-dashboard-insights-driving-smarter-marketing-decisions-ff0bc0cc7db6)

---

## 📌 The Problem

Rare Beauty has strong brand recognition and a loyal fanbase, but like many DTC beauty brands, it faces challenges across its digital funnel — visitors drop off before completing purchases, ad spend isn't always directed toward the highest-performing channels, and the mobile experience leaves room for improvement.

This project asks: *what would it look like to fix that using both design thinking and data?*

---

## 🔍 What This Project Covers

### 🎨 UX Audit & Figma Redesign

The website was evaluated using two industry-standard frameworks:

- **AARRR** *(Acquisition → Activation → Retention → Referral → Revenue)* — maps where users drop off in the funnel
- **HEART** *(Happiness, Engagement, Adoption, Retention, Task Success)* — measures the quality of the user experience at each touchpoint

**Issues identified:**
- Confusing checkout flow causing purchase drop-offs
- Limited shade-matching guidance for first-time buyers
- Poor mobile navigation making product discovery harder than it needs to be

**What was built:** A Figma prototype with a cleaner layout, an improved "Find Your Shade" quiz, streamlined checkout, and clearer calls-to-action.

🔗 [View Prototype →](https://dash-sheen-59603545.figma.site/)

---

### 📊 Marketing Analytics Dashboard

A full analytics pipeline was built from scratch using simulated data designed to mirror real-world beauty industry marketing scenarios.

**How the pipeline works:**

```
Simulated Data  →  MySQL ETL Pipeline  →  Tableau Dashboards
(ad spend,          (stage → clean →        (5 dashboards for
 revenue,            transform → load)        business insights)
 engagement,
 audience segments)
```

**The 5 Dashboards:**

| Dashboard | What It Answers |
|---|---|
| 📈 **Executive** | How are we performing overall? *(Revenue, ROAS, CPA, Conversions)* |
| 📣 **Campaign** | Which campaigns are on track vs. overspending? |
| 💰 **Financial** | Where are we over/underinvesting relative to expected returns? |
| 🛍️ **Product** | Which products drive the most conversions and revenue? |
| 👥 **Audience** | Who are our most engaged and highest-value customers? |

---

## 💡 Key Findings

- 📧 **Email Marketing** delivers the highest ROI but receives the least budget — a significant missed opportunity
- 🔍 **Google Ads** drives strong revenue but is underinvested compared to its potential
- 📱 **Meta & Pinterest Ads** are overfunded, leading to inefficiencies and diminishing returns
- 👩 **Gen Z & Beauty Enthusiasts** are the most engaged segments with the highest lifetime value
- 💋 **Holiday Lip Set** is the top seasonal performer with strong conversion rates

---

## 🎯 Strategic Recommendations

1. Reallocate **~$46K toward Email Marketing** to compound its already strong ROI
2. Increase **Google Ads investment by ~$25K** to close the performance gap
3. Pull back on **Pinterest and Meta** spend where returns are weakest
4. Build **mid-funnel content strategies** (tutorials, influencer education) to move hesitant buyers
5. Invest in **loyalty programs** to retain Gen Z customers long-term

---

## 🛠️ Tools & Technologies

| Tool | Role |
|---|---|
| **MySQL** | ETL pipeline — data staging, transformation, and reporting tables |
| **Tableau Public** | Dashboard design and business insight visualization |
| **Figma** | UI/UX prototype and website redesign |
| **AARRR & HEART Frameworks** | Structured the UX audit methodology |

---

## 📂 Repository Structure

```
├── tables.sql                   # Schema definitions for fact & dimension tables
├── database.sql                 # Full database setup script
├── insert.sql                   # Simulated data population
├── truncate.sql                 # Table truncation utility
├── drop.sql                     # Cleanup / teardown script
├── rare_beauty_dashboard.twb    # Tableau workbook
├── rare marketing dashboard.pptx  # Presentation deck with findings & recommendations
└── Mood_Board.pdf               # Visual brand reference used during redesign
```

---

## 🔗 Links

- 🎨 [Figma Prototype](https://dash-sheen-59603545.figma.site/)
- 📖 [Medium Article](https://medium.com/@nakati.akanksha/rare-beautys-dashboard-insights-driving-smarter-marketing-decisions-ff0bc0cc7db6)

---

> **Note:** All data in this project is simulated for analytical purposes. No proprietary Rare Beauty data was used.
