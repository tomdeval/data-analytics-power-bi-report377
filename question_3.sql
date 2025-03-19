SELECT 
    dim_stores.store_type AS german_store_type,
    SUM(store_sales.total_sales) AS total_revenue
FROM 
    dim_stores
JOIN 
    store_sales ON dim_stores.store_type = store_sales.store_type
JOIN 
    orders ON dim_stores.store_code = orders.store_code
WHERE 
    dim_stores.country = 'Germany'
    AND EXTRACT(YEAR FROM TO_DATE(orders.order_date, 'DD/MM/YYYY')) = 2022
GROUP BY 
    dim_stores.store_type
ORDER BY 
    total_revenue DESC
LIMIT 1;