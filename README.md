# Meta Employee Retention & Engagement Analysis

## People Analytics Case Study | SQL + Python

### Project Overview

This People Analytics project uses a simulated dataset of 7,500 Meta employees to examine two workforce challenges: retaining Top Performers and improving employee engagement.

Using SQL and Python, I analyzed employee performance, turnover intention, job satisfaction, supervisor and leadership ratings, and workforce characteristics to identify key patterns and develop evidence-based recommendations.

## Business Questions

1. How can Meta identify and retain Top Performers fairly without simply raising wages?
2. How can Meta improve employee engagement, morale, and productivity?

## Analytical Approach

### SQL
- Validated data quality, including missing values, duplicates, and variable ranges.
- Examined workforce patterns across job, gender, ethnicity, and tenure.
- Aggregated employee experience and workforce measures across key employee groups.

### Python
- Segmented employees by performance rating to identify Top Performers.
- Compared turnover intention across performance and job groups.
- Examined potential retention and engagement drivers using correlation analysis.
- Used multiple linear regression to assess predictors of turnover intention.
- Created visualizations to communicate key workforce patterns.

## Key Findings

### Top Performer Retention
- Top Performers reported the highest average turnover intention (3.48).
- Software Development Top Performers had the highest turnover intention (3.91).
- The available variables did not clearly explain turnover intention.

### Employee Engagement
- Job satisfaction was similar across job groups (2.78–2.89).
- The available engagement measures showed little to no correlation with one another.
- The data did not identify a clear engagement driver.

## Recommendations

### Top Performer Retention
- Prioritize retention efforts for Top Performers, particularly in Software Development.
- Conduct targeted stay interviews or focused pulse surveys to identify retention drivers not captured in the current dataset.
- Avoid assuming that compensation is the primary solution, as salary showed only a weak relationship with turnover intention.

### Employee Engagement
- Avoid implementing a broad engagement intervention based on the current data alone.
- Collect additional diagnostic data to identify specific drivers of employee morale and engagement before designing targeted interventions.


## Skills & Tools

**Tools:** SQL (SQLite), Python, Pandas, Matplotlib, Statsmodels, Jupyter Notebook

**People Analytics:** Data cleaning, data validation, workforce segmentation, employee retention analysis, employee engagement analysis, descriptive statistics, correlation analysis, regression analysis, data visualization, and evidence-based recommendations.


## Repository Files

- `employee_analysis.sql` — SQL data validation, aggregation, and workforce analysis
- `meta_people_analytics_case_study.ipynb` — Python analysis, statistical modeling, visualizations, findings, and recommendations
## Limitations

- The dataset is simulated and does not represent actual Meta employee records.
- The analysis is observational and does not establish causal relationships.
- Turnover intention represents reported intent rather than actual employee turnover.
- The available variables may not capture important retention and engagement drivers.
- Productivity is not directly measured in the dataset.
