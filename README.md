#  F&B Customer Analytics Dashboard – SQL + Power BI

A complete end-to-end analytics project using **SQL for data preparation** and **Power BI for interactive reporting**.
It analyzes customer behavior, revenue performance, product contribution, and churn/retention patterns for a fictional F&B business.

🔗 **Live Power BI Dashboard:**                                                    
[https://app.powerbi.com/view?r=eyJrIjoiMGM3YWIyNTUtMmYyYi00NzhhLWI1NDgtYzIzMTM3NmIxOThlIiwidCI6IjhlZjRhZjJkLTkwY2YtNGIzMS1hMTI4LTNmYWE5M2EzMmJjOCIsImMiOjEwfQ%3D%3D](https://app.powerbi.com/view?r=eyJrIjoiMGM3YWIyNTUtMmYyYi00NzhhLWI1NDgtYzIzMTM3NmIxOThlIiwidCI6IjhlZjRhZjJkLTkwY2YtNGIzMS1hMTI4LTNmYWE5M2EzMmJjOCIsImMiOjEwfQ%3D%3D)

---
Dashboard Preview

Below is a visual overview of the full Power BI report (4 pages):

<table> <tr> <td align="center"> <img src="https://github.com/PannPwintPhyu/customer_analytics_dashboard/blob/main/assets/01_Overview.png" width="400"/> <br><b>1. Overview Dashboard</b> </td> <td align="center"> <img src="https://github.com/PannPwintPhyu/customer_analytics_dashboard/blob/main/assets/02_Cus_Segmentation.png" width="400"/> <br><b>2. Customer Segmentation</b> </td> </tr> <tr> <td align="center"> <img src="https://github.com/PannPwintPhyu/customer_analytics_dashboard/blob/main/assets/03_Retention%20vs%20Churn.png" width="400"/> <br><b>3. Retention vs Churn</b> </td> <td align="center"> <img src="https://github.com/PannPwintPhyu/customer_analytics_dashboard/blob/main/assets/04_Cus_info.png" width="400"/> <br><b>4. Customer Explorer</b> </td> </tr> </table>

---

##  Data Preparation (SQL in SSMS)

Raw transactional data (sales, customers, menu items, feedback, stores) was cleaned and transformed using SQL.

**Key steps:**

* Joining transactions with feedback
* Revenue & discount calculations
* Customer age-band and demographic enrichment
* Menu category grouping
* Store attribute standardization
* Sentiment & NPS classification

Outputs clean analytical datasets for BI modeling.

---

##  Analytical Data Model (Power BI)

A star-schema model with:

* **Central fact table**: sales + feedback
* **Dimensions**: customer, product, store, competitor pricing

Includes DAX measures for revenue, AOV, recency, frequency, churn, etc.

---

##  Power BI Dashboards

### 1️. Overview

Revenue, customers, AOV, top items, city/channel performance, trend analysis.

### 2️. Customer Segmentation

Frequency vs monetary, age groups, recency, segment revenue contribution.

### 3️. Churn & Retention

Churn breakdown, return gap buckets, repeat vs new customer trends.

### 4️. Customer Explorer

Customer-level insights: total orders, AOV, recency, demographics, last purchase.

---

## ❓ Business Questions Answered

* Who are our top customers?
* Which items and channels drive revenue?
* Which customers are at risk of churn?
* How frequently do customers return?
* What demographic groups contribute most?

---

## 🚀 Skills Demonstrated

* **SQL (SSMS):** data cleaning, transformation, enrichment
* **Power BI:** modeling, DAX, storytelling, interactivity
* **Analytics:** customer segmentation, product analysis, churn insights

---

## 📌 Key Insights

* Early lifecycle customers churn quickly → need onboarding campaigns
* Champions & Loyal segments drive most revenue
* At-Risk customers represent strong reactivation opportunities
* Top items dominate sales → require inventory prioritization
* City performance varies → targeted marketing recommended

---


