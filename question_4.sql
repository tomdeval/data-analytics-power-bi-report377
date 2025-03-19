CREATE VIEW td_store_sales_by_type AS
SELECT 
    store_sales.store_type,  
    SUM(store_sales.total_sales) AS total_sales,  
    SUM(store_sales.total_sales) * 100.0 / SUM(SUM(store_sales.total_sales)) OVER () AS percentage_of_total_sales,  
    SUM(store_sales.order_count) AS count_of_orders  
FROM 
    store_sales
GROUP BY 
    store_sales.store_type  
ORDER BY 
    total_sales DESC;

SELECT * 
FROM td_store_sales_by_type;