USE hr_analytics;
-- 1. Total Employees 

SELECT COUNT(*) AS Total_Employees
FROM employees;

-- 2. Employees by Department 

SELECT Department,
       COUNT(*) AS Total_Employees
FROM employees
GROUP BY Department
ORDER BY Total_Employees DESC;

-- 3. Employees by Gender 

SELECT Gender,
       COUNT(*) AS Total_Employees
FROM employees
GROUP BY Gender;

--  4. Attrition Count

SELECT Attrition,
       COUNT(*) AS Employee_Count
FROM employees
GROUP BY Attrition;

--  5. Attrition Rate (%)

SELECT ROUND(
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
) AS Attrition_Rate
FROM employees;

--  6. Department-wise Attrition

SELECT Department,
       COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY Employees_Left DESC;

-- 7. Average Monthly Income by Department 

SELECT Department,
       ROUND(AVG(MonthlyIncome),2) AS Avg_Monthly_Income
FROM employees
GROUP BY Department
ORDER BY Avg_Monthly_Income DESC;

-- 8. Average Age by Department 

SELECT Department,
       ROUND(AVG(Age),2) AS Average_Age
FROM employees
GROUP BY Department;

--  9. Employees Working Overtime

SELECT OverTime,
       COUNT(*) AS Employee_Count
FROM employees
GROUP BY OverTime;

--  10. Job Role with Highest Average Salary

SELECT JobRole,
       ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM employees
GROUP BY JobRole
ORDER BY Avg_Salary DESC;

--  11. Average Job Satisfaction by Department

SELECT Department,
       ROUND(AVG(JobSatisfaction),2) AS Avg_Job_Satisfaction
FROM employees
GROUP BY Department
ORDER BY Avg_Job_Satisfaction DESC;

--  12. Attrition by Business Travel

SELECT BusinessTravel,
       COUNT(*) AS Employees_Left
FROM employees
WHERE Attrition='Yes'
GROUP BY BusinessTravel
ORDER BY Employees_Left DESC;

--  13. Average Years at Company by Department

SELECT Department,
       ROUND(AVG(YearsAtCompany),2) AS Avg_Years
FROM employees
GROUP BY Department;