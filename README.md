# Mando Manufacturing – Downtime & Production Loss Analysis

## 📊 Project Overview

This project analyzes manufacturing downtime and production loss to understand machine performance and identify areas where production improvements may be needed.

The analysis focuses on:

- Machine downtime
- Machine breakdowns
- Downtime reasons
- Production loss
- Production performance
- Machine-level performance

The project follows a complete Data Analytics workflow:

**Business Problem → Raw Data → Data Cleaning → SQL Analysis → Power BI Dashboard → Insights → Recommendations**

---

## 🎯 Business Problem

Our production team is facing machine downtime, failures, and defective production. Management wants to understand what is causing production problems and where improvements are needed.

### Machine Performance

- Which machine breaks down most often?
- Which machine has the highest total downtime?
- How many times did each machine break down?
- Which machine has the highest average downtime?
- Which machine has the longest single downtime event?

### Downtime Analysis

- Which downtime reason occurs most often?
- Which downtime reason causes the highest total downtime?
- Which downtime reason has the highest average downtime?
- Which downtime reason has the longest single downtime event?

### Production Loss Analysis

- How much total production was lost because of downtime?
- Which machine has the highest production loss?
- Which downtime reason causes the highest production loss?
- Which machine has the highest production loss percentage?
- Which downtime reason has the highest production loss percentage?
- Which machine has the highest average production loss per downtime incident?

### Production Performance

- Which machine has the lowest total production?
- Which machine has the highest downtime incidents and production loss?
- Does higher downtime appear to be associated with higher production loss?

---

## 🗂️ Dataset

The dataset contains **500 manufacturing downtime records**.

It includes information about:

- Record ID
- Date
- Machine ID
- Machine Type
- Downtime Reason
- Downtime Hours
- Planned Production Units
- Production Loss
- Production Units Produced

The dataset contains **20 machines** and **7 downtime reasons**.

### Downtime Reasons

- Mechanical Failure
- Electrical Failure
- Tool Wear
- Overheating
- Power Failure
- Maintenance
- Material Shortage

> **Note:** This is a portfolio/learning project using realistic synthetic manufacturing data. It does not represent actual operational data from Mando Manufacturing.

---

## 🧹 Data Preparation

The raw data was prepared before performing the analysis.

The preparation process included:

- Checking the dataset structure
- Reviewing column names
- Checking data types
- Checking records for analysis
- Preparing the data for SQL analysis
- Connecting the analyzed data to Power BI

---

## 🧮 SQL Analysis

PostgreSQL was used to analyze the manufacturing downtime data.

The SQL analysis includes:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MAX()`
- `GROUP BY`
- `ORDER BY`
- `CASE WHEN`
- `ROUND()`

### Examples of analysis

#### Total Downtime by Machine

```sql
SELECT
    machine_id,
    SUM(downtime_hours) AS total_downtime_hours
FROM manufacturing_downtime
GROUP BY machine_id
ORDER BY total_downtime_hours DESC;
