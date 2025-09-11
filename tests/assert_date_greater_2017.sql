SELECT
    order_date
    from {{ ref('stg_jaffle_shop__orders') }}
    where order_date < '2019-01-01'