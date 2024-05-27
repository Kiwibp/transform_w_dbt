SELECT 
    customers.customer_key, 
    customers.name, 
    SUM(line_items.extended_price * (1 - line_items.discount_amount_usd)) AS revenue, 
    customers.account_balance, 
    nations.name, 
    customers.address, 
    customers.phone
FROM {{ ref('stg_tpch__customers')}} customers 
LEFT JOIN {{ ref('stg_tpch__orders')}} orders 
    ON customers.customer_key = orders.customer_key
LEFT JOIN {{ ref('stg_tpch__line_items')}} line_items 
    ON orders.order_key = line_items.order_key 
LEFT JOIN {{ ref('stg_tpch__nations') }} nations 
    ON customers.nation_key = nations.nation_key 
WHERE orders.order_date < CURRENT_DATE
    AND orders.order_date >= CURRENT_DATE - interval '3' month
    AND line_items.return_flag_code = 'R'
GROUP BY
    customers.customer_key,
    customers.name, 
    customers.account_balance, 
    nations.name, 
    customers.address, 
    customers.phone


