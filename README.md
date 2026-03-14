# Sales Data Analysis with SQL
## Project Overview\
This project analyzes a retail sales dataset (Sample Superstore) using SQL to uncover business insights. The dataset contains information on orders, products, regions, and customer segments.\
\
## Dataset\
- Source: [Sample Superstore on Kaggle](https://www.kaggle.com/datasets/bravehart101/sample-supermarket-dataset)\
- Rows: ~10,000 order lines\
- Key columns: Region, Category, Sub\uc0\u8209 Category, Sales, Profit, Quantity, Discount, Segment, City, State\
\
## Analysis Performed & Key Findings\
\
### 1. Overall Performance\
- **Total Sales**: $2,297,200.86\
- **Total Profit**: $286,397.02\
\
### 2. Regional Analysis\
- **Top Region by Sales**: West \'96 $725,457.82\
- **Highest Profit Region**: West (same as sales)\
\
### 3. Category Analysis\
- **Main Categories**: Technology, Furniture, Office Supplies\
- **Highest Sales Category**: Technology\
- **Most Profitable Category**: Technology\
\
### 4. Top 10 Sub\uc0\u8209 Categories by Sales\
| Sub\uc0\u8209 Category | Sales ($) | Profit ($) |\
|--------------|-----------|------------|\
| Phones       | 330,007.05 | 44,515.73 |\
| Chairs       | 328,449.10 | 26,590.17 |\
| Storage      | 223,843.61 | 21,278.83 |\
| *(remaining 7 not listed)* | ... | ... |\
\
### 5. Sales by Customer Segment\
- **Consumer**: $1,161,401.34\
- **Corporate**: $706,146.37\
- **Home Office**: $429,653.15\
\
### 6. Average Order Line Value\
- **$229.86** per line item\
\
### 7. Quantity Sold by Category\
- **Office Supplies**: 22,906 units\
- **Furniture**: 8,028 units\
- **Technology**: 6,939 units\
\
### 8. Profit Margin by Category\
- **Technology**: 17.40%\
- **Furniture**: 2.49%\
- **Office Supplies**: *(run query if needed)*\
\
### 9. Discount Analysis\
- **Highest Average Discount**: Furniture (17.4%)\
- **Impact**: High discounts correlate with low profit margins (Furniture margin only 2.49%).\
\
### 10. Top 10 Cities by Sales\
| City           | State       | Sales ($) |\
|----------------|-------------|-----------|\
| New York City  | New York    | 256,368.16 |\
| ... (others)   | ...         | ...       |\
\
## SQL Queries\
All queries used are saved in [`analysis_queries.sql`](analysis_queries.sql) in this repository.\
\
## Tools Used\
- MySQL\
- MySQL Workbench}
