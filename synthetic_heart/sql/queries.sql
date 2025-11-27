-- 1. Count heart disease cases
SELECT Heart_Disease, COUNT(*) AS cnt
FROM heart_data
GROUP BY Heart_Disease;

-- 2. Percentage of heart disease
SELECT Heart_Disease,
       COUNT(*) * 100.0 / (SELECT COUNT(*) FROM heart_data) AS pct
FROM heart_data
GROUP BY Heart_Disease;

-- 3. Average cholesterol by Age (or Age group)
SELECT Age, AVG(Cholesterol_Total) AS avg_chol
FROM heart_data
GROUP BY Age
ORDER BY Age;

-- 4. Average Systolic_BP by Heart_Disease label
SELECT Heart_Disease, AVG(Systolic_BP) AS avg_sysbp
FROM heart_data
GROUP BY Heart_Disease;

-- 5. Top 10 highest cholesterol patients
SELECT *
FROM heart_data
WHERE Cholesterol_Total IS NOT NULL
ORDER BY Cholesterol_Total DESC
LIMIT 10;

-- 6. Count by Gender & Heart_Disease
SELECT Gender, Heart_Disease, COUNT(*) AS cnt
FROM heart_data
GROUP BY Gender, Heart_Disease
ORDER BY Gender, Heart_Disease;

-- 7. Create a view of high risk (example rule: risk_score > some threshold)
DROP VIEW IF EXISTS high_risk;
CREATE VIEW high_risk AS
SELECT *, (Age + IFNULL(Cholesterol_Total, 0) + IFNULL(Systolic_BP,0))/3.0 AS simple_risk
FROM heart_data
WHERE Age IS NOT NULL;

-- 8. Show top high risk patients from the view
SELECT * FROM high_risk
ORDER BY simple_risk DESC
LIMIT 20;
