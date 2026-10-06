# 📊 数据分析作品集

**中文** | [English](./README_en.md)

本仓库展示了我使用 **SQL、Python、Power BI 和 Excel** 完成的数据分析实践项目。项目涵盖典型数据分析流程中的多个环节：

**数据采集 → 数据清洗 → 数据探索 → 数据分析 → 数据可视化**

---

## 🛠️ 技能与工具

- **SQL** — 数据清洗、探索性分析、JOIN、CTE、临时表、窗口函数、视图
- **Python** — 数据采集、网页爬取、数据处理
- **Python 库** — Pandas、BeautifulSoup、Requests
- **Power BI** — 数据可视化、交互式 Dashboard
- **Excel** — 数据整理与分析
- **Jupyter Notebook** — Python 数据分析与开发

---

## 📂 项目

### 1. 🦠 使用 SQL 进行 COVID-19 数据探索

📁 [项目文件夹](./Data%20Exploration%20in%20SQL/)  
💻 [SQL 脚本](./Data%20Exploration%20in%20SQL/SQLQuery-COVID%20project.sql)

本项目使用 SQL 对全球 COVID-19 病例、死亡人数、人口以及疫苗接种数据进行探索与分析。

主要内容包括：

- 分析不同国家的感染率和死亡率
- 计算感染人数占总人口的比例
- 找出感染率最高的国家
- 比较不同国家和地区的死亡人数
- 分析全球 COVID-19 病例和死亡趋势
- 连接死亡数据与疫苗接种数据
- 使用窗口函数计算累计疫苗接种人数
- 使用 CTE、临时表、视图、聚合函数和 JOIN 进行分析

**使用工具：** SQL Server、T-SQL、Excel

---

### 2. 🏠 使用 SQL 清洗 Nashville 房地产数据

📁 [项目文件夹](./Data%20Cleaning%20in%20SQL/)  
💻 [SQL 脚本](./Data%20Cleaning%20in%20SQL/SQLQuery-Housing%20Data%20Cleaning.sql)

本项目主要使用 SQL 对 Nashville 房地产数据进行清洗和整理，为后续分析提供更加规范的数据集。

主要内容包括：

- 统一日期格式
- 使用 Self Join 补充缺失的房产地址
- 将房产地址拆分为 Address 和 City
- 将业主地址拆分为 Address、City 和 State
- 将 `Y/N` 等分类值标准化为 `Yes/No`
- 使用 `ROW_NUMBER()` 查找并删除重复数据
- 整理数据结构，为后续数据分析做好准备

**使用工具：** SQL Server、T-SQL、Excel

---

### 3. 🕸️ 使用 Python 进行 Amazon 网页数据爬取

📁 [项目文件夹](./Web%20Scraping%20Using%20Python/)  
📓 [Jupyter Notebook](./Web%20Scraping%20Using%20Python/Amazon%20Web%20Scraping%20Using%20Python.ipynb)  
📄 [采集结果 CSV](./Web%20Scraping%20Using%20Python/AmazonWebScraperDataset.csv)

本项目展示了如何使用 Python 从 Amazon 商品页面采集商品相关信息。

主要内容包括：

- 使用 `requests` 请求网页数据
- 使用 `BeautifulSoup` 解析 HTML
- 提取商品名称和价格
- 对抓取的数据进行清洗
- 记录每次数据采集的日期
- 将采集结果保存到 CSV 文件
- 使用 Pandas 读取和检查数据
- 编写可复用的价格监控函数
- 探索自动化价格追踪和邮件提醒功能

**使用工具：** Python、BeautifulSoup、Requests、Pandas、CSV、Jupyter Notebook

---

### 4. 📈 Power BI 数据可视化

📁 [项目文件夹](./PowerBI/)  
📊 [Power BI 报表文件](./PowerBI/PwerBI_Project.pbix)  
📄 [Excel 数据源](./PowerBI/Power%20BI%20-%20Final%20Project.xlsx)

本项目使用 **Power BI** 对结构化数据进行分析和可视化，并将数据转化为更加直观的交互式报表。

项目中包含原始 Excel 数据文件以及 Power BI `.pbix` 报表文件，主要用于练习如何将原始数据转化为清晰、直观的视觉结果，从而辅助数据分析和业务决策。

**使用工具：** Power BI、Excel

---

## 📁 项目结构

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

## 🎯 作品集目的

目前项目涉及数据采集、数据清洗、SQL 数据查询与探索、Python 数据处理、网络数据爬取以及 Power BI 数据可视化等内容。

随着数据分析技能的进一步学习和实践，我会持续在本仓库中加入新的项目。

---

## 👤 作者

**GitHub：** [s1eepyp0tat0](https://github.com/s1eepyp0tat0)

感谢访问我的数据分析作品集！
