# AdventureWorks Sales Performance & Data Analytics Dashboard

This project demonstrates an end-to-end data analytics solution using **SQL Server**, **Python**, **Power BI**, and the **AdventureWorksDW2022** database.  
It is designed as a professional portfolio project to showcase skills in **SQL**, **data modeling**, **Pandas**,  **DAX**, and **dashboard design**.

---

## Project Overview

The purpose of this project is to analyze AdventureWorks sales performance across products, customers, territories, and time periods. The solution includes:

- SQL-based data exploration and preparation  
- Dimensional data modeling (Star Schema)  
- A comprehensive set of analytical measures and calculations  
- An interactive Power BI dashboard  
- Business insights derived from the analyzed data  

---

## Data Source

The project uses the **AdventureWorksDW2022** data warehouse hosted in **SQL Server Management Studio (SSMS)**.

Main tables used:

- `FactInternetSales`  
- `DimProduct`, `DimProductSubcategory`, `DimProductCategory`  
- `DimCustomer`, `DimGeography`  
- `DimDate`  
- `DimSalesTerritory`

---

## Data Model

A clean **Star Schema** was created in Power BI with the following structure:

- **Fact table:** `FactInternetSales`  
- **Dimensions:** Date, Product, Customer, Territory, Geography

All relationships are **one-to-many**, following dimensional modeling best practices. The model is optimized for fast filtering and accurate time-intelligence calculations.

---

## Dashboard Features

The Power BI dashboard provides:

- Key sales KPIs (Total Sales, Margin, Units Sold, Average Ticket)  
- Year-over-year trends and month-level seasonality analysis  
- Product performance by category and subcategory with Top-N visuals  
- Customer insights (new vs returning, segmentation, geographic distribution)  
- Territory performance with choropleth maps and ranking tables  
- Profitability and unit-cost analysis by product and territory  
- Interactive drill-down, cross-highlighting and slicers for deep exploration  
- Exportable visuals and printable report pages for stakeholder delivery

---

## Tools Used

- **Microsoft SQL Server Management Studio (SSMS)** — data exploration and SQL scripts  
- **Power BI Desktop** — data modeling and report development (.pbix)  
- **Git & GitHub** — version control and repository hosting  
- **DAX (Data Analysis Expressions)** — analytical calculations and metrics  
- **Optional:** Power BI Service for sharing and scheduled refresh

---

## Repository Structure

AdventureWorks-PowerBI-Analytics
│
├── SQL/ # SQL scripts for data exploration and preparation
│ ├── 01_exploration.sql
│ └── 02_transformations.sql
├── PowerBI/ # Power BI .pbix report file and PBI artifacts
│ └── AdventureWorks_Report.pbix
├── DAX/ # Catalog of measures, calculation notes (MD files)
├── Documentation/ # Conceptual documents, model diagrams, project plan
├── Assets/ # Images, diagrams (transparent backgrounds)
├── LICENSE # License file (MIT)
└── README.md # Project description (this file)


## Key Learning Outcomes

- Mastery of SQL querying and data preparation techniques  
- Designing an efficient Star Schema for analytics  
- Building robust analytical measures and business KPIs  
- Translating business questions into visual storytelling  
- Producing a portfolio-ready, end-to-end BI solution


## License

This project is released under the **MIT License**.  
You are free to use, modify, and distribute the content, provided attribution is kept and the software is used "as-is" without warranty.

If you prefer another license (Apache 2.0, GPLv3, or a Creative Commons variant for documentation), change it here.


## Author

**Fernando Rioseco**  
Data Science, Data Analytics & Business Intelligence  
Power BI • SQL • Data Modeling • Visualization

