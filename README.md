# 🚀 Data Warehouse & Analytics Project

## 📖 Project Overview

This project demonstrates the end-to-end development of a modern Data Warehouse and Analytics solution using SQL Server. The objective is to transform raw operational data into a structured analytical model that supports reporting, dashboarding, and business decision-making.

The project covers:

1. **Data Architecture** – Designing a modern Data Warehouse using the **Medallion Architecture (Bronze, Silver, Gold)**.
2. **ETL Pipelines** – Extracting, transforming, and loading data from source systems into the warehouse.
3. **Data Modeling** – Developing Fact and Dimension tables optimized for analytical queries.
4. **Analytics & Reporting** – Creating SQL-based reports and business insights for decision-making.

---

## 🎯 Project Objectives

- Consolidate data from multiple source systems.
- Clean and standardize raw data.
- Build a scalable analytical data model.
- Enable efficient reporting and business analysis.
- Generate actionable business insights.

---

## 🏗️ Data Warehouse Architecture

```text
ERP CSV Files
       │
CRM CSV Files
       │
       ▼
┌─────────────┐
│   Bronze    │
│ Raw Data    │
└─────────────┘
       │
       ▼
┌─────────────┐
│   Silver    │
│ Clean Data  │
└─────────────┘
       │
       ▼
┌─────────────┐
│    Gold     │
│ Analytics   │
└─────────────┘
       │
       ▼
Reports & Insights
```

---

## 📋 Project Requirements

### Data Engineering

- Import data from multiple source systems (ERP & CRM).
- Perform data quality checks and cleansing.
- Integrate data into a unified analytical model.
- Build Bronze, Silver, and Gold layers.
- Document the data model and transformation process.

### Data Analytics

- Develop analytical SQL queries.
- Create business KPIs and performance metrics.
- Generate reports for decision-making.
- Support dashboard development.

---

## 🛠️ Technologies Used

- SQL Server
- SQL
- ETL Development
- Data Warehousing
- Star Schema Modeling
- Medallion Architecture
- Git & GitHub

---

## 💡 Skills Demonstrated

- Data Warehousing
- Data Engineering
- ETL Pipeline Development
- Data Modeling
- SQL Development
- Data Quality Management
- Business Analytics
- Reporting & Insights
