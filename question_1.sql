SELECT 
    SUM(staff_numbers) AS total_staff_in_uk
FROM dim_stores
WHERE country = 'United Kingdom';