# Mando Manufacturing – Downtime & Production Loss Analysis

## 📊 Project Overview

This project analyzes manufacturing downtime, machine failures, and production loss to understand machine performance and identify areas where production improvements are needed.

The analysis focuses mainly on performance across different **machines** and **downtime reasons**.

The project follows a complete Data Analytics workflow:

**Business Problem → Data Preparation → SQL Analysis → Power BI Dashboard → Insights → Recommendations**

---

## 🎯 Business Problem

Our production team is facing machine downtime, failures, and defective production. Management wants to understand what is causing production problems and where improvements are needed.

---

## ❓ Business Questions

### Machine Performance

- Which machine breaks down most often?
- Which machine has the highest total downtime?
- Which machine has the highest average downtime?
- Which machine has the longest single downtime event?
- Which machine has the lowest total production?

### Downtime Analysis

- Which downtime reason occurs most often?
- Which downtime reason has the highest total downtime?
- Which downtime reason has the highest average downtime?
- Which downtime reason has the longest single downtime event?

### Production Loss

- How much total production was lost because of downtime?
- Which machine has the highest production loss?
- Which downtime reason has the highest production loss?
- Which machine has the highest production loss percentage?
- Which downtime reason has the highest production loss percentage?

### Production Performance

- Does higher downtime appear to be associated with higher production loss?
- Which machine has both high downtime and high production loss?

---

## 🗂️ Dataset

The dataset contains manufacturing downtime and production records.

The dataset is **realistic synthetic data created for learning and portfolio analysis** and does not represent actual operational data from Mando Manufacturing.

Key fields include:

- Record ID
- Date
- Machine ID
- Machine Type
- Downtime Reason
- Downtime Hours
- Production Units Planned
- Production Loss
- Production Units Produced

---

## 🧹 Data Preparation

Data preparation was performed before analysis.

The preparation process included:

- Checking the dataset structure
- Reviewing column names
- Checking data types
- Reviewing records
- Preparing the data for SQL analysis
- Preparing the data for Power BI

---

## 🧮 SQL Analysis

PostgreSQL was used to analyze the data and answer the business questions.

Key SQL concepts used:

- `SUM()`
- `COUNT()`
- `AVG()`
- `MAX()`
- `GROUP BY`
- `ORDER BY`
- `CASE WHEN`
- `ROUND()`

Examples of analysis included:

- Breakdown count by machine
- Total downtime by machine
- Total downtime by reason
- Average downtime by machine
- Average downtime by reason
- Production loss by machine
- Production loss by reason
- Production loss percentage
- Production performance

---

## 📊 Power BI Dashboard

The analyzed data was connected to Power BI to create an interactive manufacturing downtime dashboard.

### Key KPIs

- Total Downtime Hours
- Total Downtime Incidents
- Total Production Loss
- Total Machines

### Dashboard Visuals

- Total Downtime Hours by Machine
- Total Downtime Hours by Reason
- Total Production Loss by Machine
- Total Production Loss by Reason
- Downtime and Production Loss Analysis

---

## 🔍 Key Insights

- **Mechanical Failure has the highest total downtime, while Power Failure has the lowest.**
- **M003 has the highest total downtime at approximately 262 hours, while M006 has the lowest at approximately 85 hours.**
- **Mechanical Failure has the highest production loss, while Power Failure has the lowest production loss.**
- **M003 has the highest total production loss among the machines analyzed.**

---

## 💡 Recommendations

- Investigate **Mechanical Failures** because they have the highest total downtime and are associated with higher production disruption.
- **Prioritize Machine M003 for further investigation** because it has the highest total downtime and production loss.
- Review the **maintenance and operating conditions** of machines with high downtime to identify opportunities to reduce downtime.
- Continue monitoring **downtime hours and production loss by machine and downtime reason** to identify areas for improvement.

---

## 🛠️ Tools & Technologies

- PostgreSQL
- SQL
- Power Query
- Power BI
- Excel
- Data Cleaning
- Data Analysis
- Data Visualization

---

## 📈 Project Outcome

This project helped me practice the complete Data Analytics workflow, from understanding a manufacturing business problem and preparing data to SQL analysis, Power BI dashboard development, insight generation, and business recommendations.

---

## 👨‍💻 Author

**Rahul Bera**

Aspiring AI powered Data Analyst

Skills: SQL | Power BI | Excel | Power Query | PostgreSQL | Python
