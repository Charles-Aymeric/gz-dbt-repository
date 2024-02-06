SELECT 
    date_date,
    orders_id,
    sales.products_id,
    revenue,
    quantity,
    products.purchase_price,
    (products.purchase_price*sales.quantity) AS purchase_cost
FROM {{ ref("stg_raw__sales")}} sales
JOIN {{ ref("stg_raw__product")}} products
    ON  products.products_id = sales.products_id