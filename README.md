# HR Employee Attrition Analysis

An end-to-end analysis of 1,470 employee records identifying what drives people to leave a company.

**Key finding: employees working overtime leave at nearly 3x the rate of those who don't — and this holds true within every department.**

## The Numbers

| Metric | Value |
|---|---|
| Total employees | 1,470 |
| Left the company | 237 |
| Overall attrition rate | 16.1% |

## Findings

### Overtime is the strongest single predictor

| Group | Employees | Left | Attrition Rate |
|---|---|---|---|
| Working overtime | 416 | 127 | **30.5%** |
| No overtime | 1,054 | 110 | **10.4%** |

Employees working overtime make up only 28% of the workforce but account for **over half of all departures** (127 of 237).

### It's not just a department effect

A natural question: is overtime just a proxy for working in Sales, which has the highest overall attrition? No — the effect holds *within* every department.

| Department | No Overtime | Overtime |
|---|---|---|
| Sales | 13.8% | **37.5%** |
| Research & Development | 8.6% | **27.3%** |
| Human Resources | 15.2% | **29.4%** |

An R&D employee working overtime (27.3%) is at greater risk than the *average* Sales employee (20.6%). The two risk factors compound: Sales + overtime is the highest-risk group at 37.5%.

**Caveat:** Human Resources has only 63 employees, so its rates are volatile — a handful of departures swings the percentage several points. The Sales and R&D figures rest on much larger samples and are the more reliable of the three.

## Approach

| Step | Tool |
|---|---|
| Data cleaning | Numbers → CSV |
| Querying & aggregation | SQL (Google BigQuery) |
| Analysis & visualization | Python (pandas, matplotlib, seaborn) |
| Dashboard | Tableau |

Results were computed independently in SQL and in pandas, and the figures match exactly — a check that the pipeline is consistent end to end.

## Data

[IBM HR Analytics Employee Attrition dataset](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset) (1,470 records, 35 original fields).

Three constant columns (`EmployeeCount`, `StandardHours`, `Over18`) were dropped during cleaning — every row shared the same value, so they carried no analytical signal.

## Files

- `hr_attrition.sql` — BigQuery queries for aggregation
- `hr_attrition_analysis.ipynb` — Python analysis with charts ([open in Colab](https://colab.research.google.com/github/bfreebnf12/hr-employee-attrition-analysis/blob/main/hr_attrition_analysis.ipynb))

## Author

**Brittany McCleod** — B.S. Management Information Systems

[LinkedIn](https://www.linkedin.com/in/brittanymccleod) · [Tableau Public](https://public.tableau.com/app/profile/brittany.mccleod) · [GitHub](https://github.com/bfreebnf12)
