# SQL Case Study: Analysing Unicorn Companies

## Table of Contents

- 
- [Recommendations](#recommendations)


### Case Study Overview
---

This case study encourages data analysts to support an angel investment firm by discovering top 3 performing industries in terms of **the highest number of unicorn companies that they have had within their scope up to now**. In the world of finance, “*the term unicorn refers to a privately held startup company with a value of over $1 billion*.”

As well as discovering what those top industries are, an exploration work of average valuation in billions and number of unicorns was required to undertake, in order to identify trends toward where high-growth companies mostly stem from.





### Data Sources

Sales Data: The primary dataset used for this analysis is the "sales_data.csv" file, containing detailed information about each sale made by the company.

### Tools

- Excel - Data Cleaning 
  - [Download here](https://microsoft.com)
- SQL Server - Data Analysis
- Power BI - Creating Reports

### Data Cleaning/Preparation

In the initial data preparation phase, we performed the following tasks:

1. Data loading and inspection.
2. Handling missing values.
3. Data cleaning and formatting.

### Exploratory Data Analysis (EDA)


<img width="892" alt="Example Pic" src="https://github.com/OzzyGoylusun/SQL-Case-Study-Analysing-Unicorn-Companies/assets/152992554/7fef48e9-12aa-425e-8394-72a1de395ef2">


### Data Analysis


```sql
SELECT * FROM table1
WHERE cond = 2
```

### Results/Findings

The analysis results are summarised as follows:



### Recommendations

Based on the analysis, we recommend the following actions:

- Invest in marketing and promotions during peak sales seasons to maximize revenue.


### Limitations

I had to remove all zero values from budget and revenue columns because they would have affected the accuracy of my conclusions from the analysis. There are still a
few outliers even after the omissions but even then we can still see that there is a positive correlatation between both budget and number of votes with revenue.

### References

1. 

