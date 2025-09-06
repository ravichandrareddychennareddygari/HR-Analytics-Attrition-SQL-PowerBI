# 📊 HR Analytics – Employee Attrition (SQL + Power BI)

This project is about analyzing **employee attrition** (why employees leave a company).  
I used **SQL** to clean and prepare the dataset, and then built dashboards in **Power BI**.

---

## 📂 Contents
- `Dataset/original/` – raw dataset from Kaggle  
- `Dataset/cleaned/hr_data_cleaned.csv` – cleaned dataset (ready for Power BI)  
- `SQL/hr_cleaning.sql` – SQL queries for cleaning and creating new columns  
- `PowerBI/` – Power BI `.pbix` file  
- `Images/` – screenshots of dashboards  

---

## 🗂 Dataset
- **Source:** IBM HR Analytics Employee Attrition & Performance  
  👉 https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset  

I first cleaned it using SQL and then used the cleaned file for dashboards.

---

## ⚙️ Tools Used
- **SQL** – data cleaning and transformations  
- **Power BI** – dashboard building and visualization  

---

## 🧹 SQL Cleaning (main steps)
- Removed rows with missing values (like EmployeeNumber, Age, Department)  
- Standardized Gender (Male/Female)  
- Created new column `Attrition_Flag` (1 = Yes, 0 = No)  
- Created `YearsGroup` based on `YearsAtCompany`  
- Rounded Monthly Income for easier visuals  

---

## 📈 Power BI Dashboard Pages
**Page 1 – Executive Overview**  
- KPIs: Total Employees, Attrition Rate, Avg Income, Avg Age  
- Attrition by Gender, Department, Years at Company  

**Page 2 – Attrition Drivers**  
- Attrition by Job Role, Education Field  
- Scatter: Income vs Years at Company (colored by Attrition)  

**Page 3 – Satisfaction & Overtime**  
- Attrition by JobSatisfaction  
- Attrition by Overtime  
- Attrition by Marital Status  

---

## 🖼 Dashboard Screenshots
![Dashboard - Overview](Images/dashboard1.png)  
![Dashboard - Drivers](Images/dashboard2.png)  
![Dashboard - Satisfaction](Images/dashboard3.png)  

---

## 🚀 How to Run
1. Download dataset from Kaggle and put it in `Dataset/original/`.  
2. Run SQL queries (`SQL/hr_cleaning.sql`) to clean the data.  
3. Export as `hr_data_cleaned.csv`.  
4. Open the cleaned data in Power BI and recreate dashboards.  
5. (Optional) Save your `.pbix` in the PowerBI folder and export screenshots.  

---

## 🎯 Learning Outcomes
- Practiced **SQL cleaning and transformations**  
- Learned how to prepare data for BI tools  
- Built a **Power BI dashboard** to analyze real HR data  
