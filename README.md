 📊 E-Commerce Sales Analytics & Forecast Dashboard

🔹 Project Overview
This project analyzes an e-commerce dataset to uncover sales trends, top products & countries, and forecast future revenue.  

Objective: Transform raw sales data into actionable insights and create an interactive dashboard to visualize historical and predicted sales.  
Tools: Python (pandas, Prophet, matplotlib,ARIMA), SQL Server, Power BI

---

🌟 Key Features
- Data Cleaning & Monthly Aggregation: Handle missing values, negative sales, and inconsistent dates using Python.  
- 12-Month Sales Forecast: Predict future revenue with Prophet for a smooth, continuous forecast.  
- SQL Server Integration: Store cleaned data and run sample analytics queries.  
- Interactive Power BI Dashboard:
  - Actual vs Forecast line chart  
  - KPI Cards: Average Monthly Sales, Top Product, Top Country  
  - Top products & countries visualizations  
  - Slicers for Month, Country, Product Description

---
🔹 Project structure
 E-Commerce-Sales-Analytics-Forecast/
│
├── 📂 notebooks/
│ ├── 01_data_cleaning.ipynb → Data cleaning and preprocessing steps
│ ├── 02_forecast_prophet.ipynb → Prophet modeling, forecast, and export
│
├── 📂 data/
│ └── sample_data.csv → Sample dataset used for analysis
│
├── 📂 sql/
│ ├── create_tables.sql → SQL table creation script
│ └── sample_queries.sql → Example queries for analytics
│
├── 📂 powerbi/
│ ├── dashboard.pbix → Power BI dashboard file
│ └── dashboard_screenshots/ → Screenshots of key visualizations
│
├── README.md → Project overview and documentation
└── LICENSE → License information (optional)

