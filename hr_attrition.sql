-- HR Employee Attrition Analysis
-- BigQuery queries. Results cross-checked against pandas in hr_attrition_analysis.ipynb.

-- 1. Overall attrition rate
SELECT
  COUNT(*) AS total_employees,
  COUNTIF(Attrition) AS left_company,
  ROUND(COUNTIF(Attrition) / COUNT(*) * 100, 1) AS attrition_rate_pct
FROM `hr_project.hr_attrition`;

-- 2. Attrition rate by overtime status
SELECT
  OverTime,
  COUNT(*) AS employees,
  COUNTIF(Attrition) AS left_company,
  ROUND(COUNTIF(Attrition) / COUNT(*) * 100, 1) AS attrition_rate_pct
FROM `hr_project.hr_attrition`
GROUP BY OverTime
ORDER BY OverTime DESC;

-- 3. Attrition rate by department and overtime status
SELECT
  Department,
  OverTime,
  COUNT(*) AS employees,
  COUNTIF(Attrition) AS left_company,
  ROUND(COUNTIF(Attrition) / COUNT(*) * 100, 1) AS attrition_rate_pct
FROM `hr_project.hr_attrition`
GROUP BY Department, OverTime
ORDER BY Department, OverTime DESC;
