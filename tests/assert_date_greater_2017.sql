SELECT 
order_date
FROM {{ ref('stg_jaffle_shop__orders') }}
WHERE order_date < '2018-01-01'