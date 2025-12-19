create table hospital_data(
id serial,
Hospital_Name varchar(100),
Location varchar(100),
Department varchar(100),
Doctors_Count int,
Patients_Count int,
Admission_Date date,
Discharge_Date Date,
Medical_Expenses decimal(10,2)
);
select * from hospital_data;

-- 1. Total Number of Patients 
--  Write an SQL query to find the total number of patients across all hospitals. 
select sum(Patients_Count) as 
total_patient_across_all_hospital from Hospital_data;

-- 2. Average Number of Doctors per Hospital 
--  Retrieve the average count of doctors available in each hospital.

select Hospital_Name,round(avg(doctors_count),2) as 
avg_num_of_doctors from hospital_data
group by Hospital_Name;

-- 3. Top 3 Departments with the Highest Number of Patients 
--  Find the top 3 hospital departments that have the highest number of patients. 

SELECT 
    department,
    sum(patients_count) AS total_patient_by_department
FROM Hospital_Data
GROUP BY  department
order by total_patient_by_department desc
limit 3;

-- 4. Hospital with the Maximum Medical Expenses 
--  Identify the hospital that recorded the highest medical expenses. 

select Hospital_Name,round(sum(Medical_Expenses),2) as 
total_Medical_Expenses from hospital_data
where 
group by Hospital_Name
order by total_Medical_Expenses desc limit 1;

-- 5. Daily Average Medical Expenses 
--  Calculate the average medical expenses per day for each hospital.
SELECT 
    Hospital_Name,
    ROUND(AVG(Medical_Expenses / (Discharge_Date - Admission_Date)), 2) AS avg_daily_expenses
FROM hospital_data 
GROUP BY Hospital_Name
ORDER BY avg_daily_expenses DESC;


-- 6. Longest Hospital Stay 
--  Find the patient with the longest stay by calculating the difference between 
-- Discharge Date and Admission Date. 

SELECT 
    Discharge_Date - Admission_Date AS Days_Stayed
FROM hospital_data
order by Days_Stayed desc limit 1 ;

-- 7. Total Patients Treated Per City 
--  Count the total number of patients treated in each city. 

select location,sum(patients_count) as 
patients_treated_in_each_city from hospital_data
group by location
order by patients_treated_in_each_city desc ;

-- 8. Average Length of Stay Per Department 
--  Calculate the average number of days patients spend in each department. 

SELECT department,
    round(avg(Discharge_Date - Admission_Date),2) AS avg_Days_Stayed
FROM hospital_data
group by department
order by avg_Days_Stayed desc ;

-- 9. Identify the Department with the Lowest Number of Patients 
--  Find the department with the least number of patients. 

SELECT department,
    sum(patients_count) AS total_patient
FROM hospital_data
group by department
order by total_patient limit 1 ;

-- 10. Monthly Medical Expenses Report 
--  Group the data by month and calculate the total medical expenses for each month.

SELECT
    TO_CHAR(Admission_Date,'Month YYYY') AS month,sum(Medical_Expenses) as Medical_Expenses
FROM hospital_data
GROUP BY TO_CHAR(Admission_Date , 'Month YYYY')
ORDER BY month;
