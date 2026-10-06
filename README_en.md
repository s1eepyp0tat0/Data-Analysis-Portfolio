# 📊 Data Analysis Portfolio

[中文](./README.md) | **English**

Welcome to my Data Analysis Portfolio!

This repository showcases hands-on data analysis projects using **SQL, Python, Power BI, and Excel**. The projects cover multiple stages of a typical analytics workflow:

**Data Collection → Data Cleaning → Data Exploration → Analysis → Visualization**

My goal is to demonstrate practical skills in working with raw data, transforming it into structured datasets, exploring patterns, and presenting insights clearly.

---

## 🛠️ Skills & Tools

- **SQL** — Data cleaning, exploratory analysis, joins, CTEs, temporary tables, window functions, views
- **Python** — Data collection, web scraping, data processing
- **Python Libraries** — Pandas, BeautifulSoup, Requests
- **Power BI** — Data visualization and interactive dashboard development
- **Excel** — Data preparation and analysis
- **Jupyter Notebook** — Python development and analysis

---

## 📂 Projects

### 1. 🦠 COVID-19 Data Exploration Using SQL

📁 [Project Folder](./Data%20Exploration%20in%20SQL/)  
💻 [SQL Script](./Data%20Exploration%20in%20SQL/SQLQuery-COVID%20project.sql)

This project explores global COVID-19 case, death, population, and vaccination data using SQL.

Key tasks include:

- Analyzing infection and death rates by country
- Calculating the percentage of population infected
- Identifying countries with the highest infection rates
- Comparing death counts across countries and continents
- Analyzing global COVID-19 trends
- Joining COVID death and vaccination datasets
- Calculating cumulative vaccination totals with window functions
- Using CTEs, temporary tables, views, aggregate functions, and joins

**Tools:** SQL Server, T-SQL, Excel

---

### 2. 🏠 Nashville Housing Data Cleaning Using SQL

📁 [Project Folder](./Data%20Cleaning%20in%20SQL/)  
💻 [SQL Script](./Data%20Cleaning%20in%20SQL/SQLQuery-Housing%20Data%20Cleaning.sql)

This project focuses on cleaning and transforming a Nashville housing dataset using SQL.

Key tasks include:

- Standardizing date formats
- Filling missing property addresses with self joins
- Splitting property addresses into address and city columns
- Splitting owner addresses into address, city, and state
- Standardizing categorical values such as `Y/N` into `Yes/No`
- Identifying and removing duplicate records using `ROW_NUMBER()`
- Preparing the dataset for further analysis

**Tools:** SQL Server, T-SQL, Excel

---

### 3. 🕸️ Amazon Web Scraping Using Python

📁 [Project Folder](./Web%20Scraping%20Using%20Python/)  
📓 [Jupyter Notebook](./Web%20Scraping%20Using%20Python/Amazon%20Web%20Scraping%20Using%20Python.ipynb)  
📄 [Collected CSV Data](./Web%20Scraping%20Using%20Python/AmazonWebScraperDataset.csv)

This project demonstrates how Python can be used to collect product information from an Amazon product page.

Key tasks include:

- Connecting to a webpage with `requests`
- Parsing HTML with `BeautifulSoup`
- Extracting product titles and prices
- Cleaning scraped values
- Recording the date of data collection
- Saving collected data to CSV
- Loading and reviewing data with Pandas
- Building a reusable price-checking function
- Exploring automated price tracking and email notification workflows

**Tools:** Python, BeautifulSoup, Requests, Pandas, CSV, Jupyter Notebook

---

### 4. 📈 Power BI Data Visualization

📁 [Project Folder](./PowerBI/)  
📊 [Power BI Report](./PowerBI/PwerBI_Project.pbix)  
📄 [Source Excel File](./PowerBI/Power%20BI%20-%20Final%20Project.xlsx)

This project demonstrates the use of **Power BI** to transform structured data into an interactive visual analysis.

The project includes the original Excel dataset and the Power BI `.pbix` report file. It focuses on presenting data clearly and turning raw information into accessible visual insights that can support data-driven decision making.

**Tools:** Power BI, Excel

---

## 📁 Repository Structure

```text
Data-Analysis-Portfolio/
│
├── Data Cleaning in SQL/
│   ├── Nashville Housing Data for Data Cleaning.xlsx
│   └── SQLQuery-Housing Data Cleaning.sql
│
├── Data Exploration in SQL/
│   ├── CovidDeaths.xlsx
│   ├── CovidVaccinations.xlsx
│   └── SQLQuery-COVID project.sql
│
├── Web Scraping Using Python/
│   ├── Amazon Web Scraping Using Python.ipynb
│   └── AmazonWebScraperDataset.csv
│
├── PowerBI/
│   ├── Power BI - Final Project.xlsx
│   └── PwerBI_Project.pbix
│
├── README.md
└── README_en.md
```

---

## 🎯 Portfolio Purpose

This portfolio is designed to demonstrate practical data analytics skills through hands-on projects.

The projects cover several parts of the analytics workflow, including data collection, data cleaning, SQL querying, exploratory analysis, Python data processing, web scraping, and data visualization.

I will continue adding new projects as I further develop my skills in data analytics, SQL, Python, and business intelligence.

---

## 👤 Author

**GitHub:** [s1eepyp0tat0](https://github.com/s1eepyp0tat0)

Thank you for visiting my portfolio!
