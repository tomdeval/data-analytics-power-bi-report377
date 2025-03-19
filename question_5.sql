SELECT 
    dim_products.category,  
    SUM((dim_products.sale_price - dim_products.cost_price) * orders.product_quantity) AS total_profit
FROM 
    orders
JOIN 
    dim_products ON orders.product_code = dim_products.product_code
JOIN 
    dim_stores ON orders.store_code = dim_stores.store_code
WHERE 
    dim_stores.country_region = 'Wiltshire'
    AND dim_stores.country = 'United Kingdom'
    AND EXTRACT(YEAR FROM TO_DATE(orders.order_date, 'DD/MM/YYYY')) = 2021
GROUP BY 
    dim_products.category
ORDER BY 
    total_profit DESC
LIMIT 1;
