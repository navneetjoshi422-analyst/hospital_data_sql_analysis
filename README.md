# hospital_data_sql_analysis
SQL Analysis Project: Hospital Data Insights
# 🏥 SQL Analysis Project: Hospital Data Insights

## 📖 Overview
This project demonstrates SQL analysis on hospital data. The goal is to showcase how SQL can be used to extract meaningful insights about doctors, patients, medical expenses, and hospital operations.

## 🗂 Dataset
The project uses a single table: **hospital_data**.

### Columns
- **Hospital_Name**: Name of the hospital  
- **Location**: City where the hospital is located  
- **Department**: Department within the hospital  
- **Doctors_Count**: Number of doctors available  
- **Patients_Count**: Number of patients treated  
- **Admission_Date**: Date of patient admission  
- **Discharge_Date**: Date of patient discharge  
- **Medical_Expenses**: Expenses incurred by the patient  

---

## 🔎 Analysis Performed
The queries (included in the attached PDF) cover the following insights:

1. **Total Number of Patients** across all hospitals.  
2. **Average Number of Doctors per Hospital**.  
3. **Top 3 Departments with the Highest Number of Patients**.  
4. **Hospital with the Maximum Medical Expenses**.  
5. **Daily Average Medical Expenses per Hospital**.  
6. **Longest Hospital Stay** (difference between admission and discharge dates).  
7. **Total Patients Treated Per City**.  
8. **Average Length of Stay Per Department**.  
9. **Department with the Lowest Number of Patients**.  
10. **Monthly Medical Expenses Report** grouped by admission month.

---

## 📊 Key Learnings
- Using **aggregate functions** (`SUM`, `AVG`) with `GROUP BY`.  
- Applying **date functions** for time‑based grouping.  
- Calculating **differences between dates** to measure hospital stays.  
- Ranking results with `ORDER BY` and limiting with `LIMIT`.  

---

## 🚀 How to Run
1. Clone the repository.  
2. Import the dataset into PostgreSQL (or your SQL engine).  
3. Run the queries provided in the PDF.  
4. Explore insights and adapt queries for your own datasets.  

---

## 📌 Future Enhancements
- Add **visualizations** (charts/graphs) using Python or BI tools.  
- Extend analysis to include **doctor‑to‑patient ratios**.  
- Build **stored procedures** for automated reporting.  

---
