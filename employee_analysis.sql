-- Meta Employee Retention & Engagement Analysis
-- People Analytics Case Study

-- ============================================
-- 1. DATASET OVERVIEW
-- ============================================

SELECT COUNT(*) AS total_employees
FROM employees_clean;
-- ============================================
-- 2. DATA QUALITY CHECKS
-- ============================================

-- Check for duplicate employee IDs
SELECT COUNT(*) AS total_rows,
       COUNT(DISTINCT idnum) AS unique_employees
FROM employees_clean;
-- Check for missing values in key variables
SELECT
    SUM(CASE WHEN rating IS NULL THEN 1 ELSE 0 END) AS missing_rating,
    SUM(CASE WHEN turn IS NULL THEN 1 ELSE 0 END) AS missing_turn,
    SUM(CASE WHEN job_sat IS NULL THEN 1 ELSE 0 END) AS missing_job_sat,
    SUM(CASE WHEN supv IS NULL THEN 1 ELSE 0 END) AS missing_supv,
    SUM(CASE WHEN lead IS NULL THEN 1 ELSE 0 END) AS missing_lead
FROM employees_clean;
-- ============================================
-- 3. Q1: TOP PERFORMER RETENTION
-- ============================================

-- Compare turnover intention across performance groups
SELECT
    rating,
    ROUND(AVG(CAST(turn AS REAL)), 2) AS avg_turnover_intention
FROM employees_clean
GROUP BY rating
ORDER BY avg_turnover_intention DESC;
-- ============================================
-- 3. Q1: TOP PERFORMER RETENTION
-- ============================================

-- Compare turnover intention across performance groups
SELECT
    rating,
    ROUND(AVG(CAST(turn AS REAL)), 2) AS avg_turnover_intention
FROM employees_clean
GROUP BY rating
ORDER BY avg_turnover_intention DESC;
-- Identify turnover intention among Top Performers by job
SELECT
    job,
    COUNT(*) AS top_performers,
    ROUND(AVG(CAST(turn AS REAL)), 2) AS avg_turnover_intention
FROM employees_clean
WHERE rating = 2
GROUP BY job
ORDER BY avg_turnover_intention DESC;
-- Examine potential retention factors among Top Performers
SELECT
    job,
    ROUND(AVG(CAST(salary AS REAL)), 2) AS avg_salary,
    ROUND(AVG(CAST(job_sat AS REAL)), 2) AS avg_job_satisfaction,
    ROUND(AVG(CAST(supv AS REAL)), 2) AS avg_supervisor_rating,
    ROUND(AVG(CAST(lead AS REAL)), 2) AS avg_leadership_rating
FROM employees_clean
WHERE rating = 2
GROUP BY job;
-- ============================================
-- 4. Q2: EMPLOYEE ENGAGEMENT
-- ============================================

-- Compare job satisfaction across job groups
SELECT
    job,
    ROUND(AVG(CAST(job_sat AS REAL)), 2) AS avg_job_satisfaction
FROM employees_clean
GROUP BY job
ORDER BY avg_job_satisfaction DESC;
-- Compare employee experience measures across job groups
SELECT
    job,
    ROUND(AVG(CAST(job_sat AS REAL)), 2) AS avg_job_satisfaction,
    ROUND(AVG(CAST(supv AS REAL)), 2) AS avg_supervisor_rating,
    ROUND(AVG(CAST(lead AS REAL)), 2) AS avg_leadership_rating,
    ROUND(AVG(CAST(net AS REAL)), 2) AS avg_net_promoter,
    ROUND(AVG(CAST(turn AS REAL)), 2) AS avg_turnover_intention
FROM employees_clean
GROUP BY job;
-- ============================================
-- END OF ANALYSIS
-- ============================================
