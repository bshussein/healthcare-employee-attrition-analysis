USE watson_healthcare;

-- Create an attrition_flag column (0/1) 
ALTER TABLE employees
ADD COLUMN attrition_flag INT;

UPDATE employees
SET attrition_flag =
    CASE 
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END;
 
SELECT Attrition, attrition_flag, COUNT(*) 
FROM employees
GROUP BY Attrition, attrition_flag;

-- Calculate Overall Attrition Rate 
SELECT 
    COUNT(*) AS total_employees,
    SUM(attrition_flag) AS employees_left,
    ROUND(AVG(attrition_flag) * 100, 2) AS attrition_rate_percent
FROM employees;

-- Checking Attrition Rate by department 
SELECT 
    Department,
    COUNT(*) AS total_employees,
    SUM(attrition_flag) AS employees_left,
    ROUND(AVG(attrition_flag) * 100, 2) AS attrition_rate_percent
FROM employees
GROUP BY Department
ORDER BY attrition_rate_percent DESC;

-- Check Age Impact 
SELECT 
    ROUND(AVG(Age),2) AS avg_age,
    ROUND(MIN(Age),2) AS min_age,
    ROUND(MAX(Age),2) AS max_age,
    attrition_flag
FROM employees
GROUP BY attrition_flag;

-- Check Job Role Impact 
SELECT 
    JobRole,
    COUNT(*) AS total_employees,
    SUM(attrition_flag) AS employees_left,
    ROUND(AVG(attrition_flag) * 100, 2) AS attrition_rate_percent
FROM employees
GROUP BY JobRole
ORDER BY attrition_rate_percent DESC;

-- Overtime Impact 
SELECT 
    OverTime,
    COUNT(*) AS total_employees,
    SUM(attrition_flag) AS employees_left,
    ROUND(AVG(attrition_flag) * 100, 2) AS attrition_rate_percent
FROM employees
GROUP BY OverTime;

-- Test Job Satisfaction
SELECT 
    JobSatisfaction,
    COUNT(*) AS total_employees,
    ROUND(AVG(attrition_flag) * 100, 2) AS attrition_rate_percent
FROM employees
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;
