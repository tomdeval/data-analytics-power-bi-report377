SELECT 
    dim_date.month_name AS highest_revenue_month,
    SUM(store_sales.total_sales) AS total_revenue
FROM 
    orders
JOIN 
    dim_stores ON orders.store_code = dim_stores.store_code
JOIN 
    store_sales ON dim_stores.store_type = store_sales.store_type
JOIN 
    dim_date ON orders.order_date = dim_date.date
WHERE 
    dim_date.year = 2022
    AND orders.order_date IS NOT NULL
GROUP BY 
    dim_date.month_name
ORDER BY 
    total_revenue DESC
LIMIT 1