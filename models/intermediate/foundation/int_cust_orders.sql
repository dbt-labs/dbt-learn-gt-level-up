with customers as (

    select * from {{ ref('stg_jaffle_shop__customers') }}
),

orders as (

    select * from {{ ref('stg_jaffle_shop__orders') }}
),

customer_orders as (

    select 
        customers.customer_id as customer_id,
        count(orders.order_id) as order_count

    from orders
    left join customers using (customer_id)
    group by 1

)

select * from customer_orders
