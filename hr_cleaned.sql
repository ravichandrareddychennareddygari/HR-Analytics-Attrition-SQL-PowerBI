DELETE FROM hr_data
WHERE EmployeeNumber IS NULL 
   OR Age IS NULL 
   OR Department IS NULL 
   OR MonthlyIncome IS NULL 
   OR JobRole IS NULL;

UPDATE hr_data
SET Gender = CASE 
               WHEN Gender IN ('M', 'm') THEN 'Male'
               WHEN Gender IN ('F', 'f') THEN 'Female'
               ELSE Gender
             END;

ALTER TABLE hr_data ADD COLUMN Attrition_Flag INT;

UPDATE hr_data
SET Attrition_Flag = CASE 
                       WHEN Attrition = 'Yes' THEN 1 
                       ELSE 0 
                     END;

ALTER TABLE hr_data ADD COLUMN YearsGroup VARCHAR(20);

UPDATE hr_data
SET YearsGroup = CASE
                   WHEN YearsAtCompany <= 2 THEN '0-2 Years'
                   WHEN YearsAtCompany <= 5 THEN '3-5 Years'
                   WHEN YearsAtCompany <= 10 THEN '6-10 Years'
                   ELSE '10+ Years'
                 END;

UPDATE hr_data
SET MonthlyIncome = ROUND(MonthlyIncome, 0);

-- Optional: 
-- ALTER TABLE hr_data DROP COLUMN DailyRate, HourlyRate, EmployeeCount, StandardHours, Over18;
