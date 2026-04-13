# Healthcare Employee Attrition Analysis

## Overview
Analyzed employee attrition patterns within a healthcare organization to identify key drivers of workforce turnover and support retention strategy development.

## Tech Stack
- SQL (MySQL)
- Tableau

## Project Workflow
- Created derived metrics such as `attrition_flag` to quantify employee turnover
- Calculated overall attrition rate and key KPIs using SQL
- Analyzed attrition across multiple dimensions:
  - Department
  - Job Role
  - Age
  - Overtime
  - Job Satisfaction
- Translated findings into an interactive Tableau dashboard

## Key Insights
- Employees working overtime show significantly higher attrition rates (~29% vs ~5%)
- Early-tenure employees (0–1 years) are at highest risk (~55% attrition)
- Cardiology department shows highest attrition (~14%)
- Lower income bands and low job satisfaction correlate strongly with higher attrition

## Business Impact
Identifies high-risk employee segments and provides actionable insights to improve retention strategies, reduce turnover costs, and support workforce planning.

## Dashboard
View Tableau Dashboard:
https://public.tableau.com/app/profile/bander.hussein/viz/HealthcareDashboard_17722712211600/Overview

## SQL Analysis
See `analysis.sql` for full query logic used to generate KPIs and insights.
