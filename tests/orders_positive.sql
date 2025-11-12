with orders as 
( 
    select amount_usd
    from {{ ref('fct_orders') }}
)

select * 
from orders
where amount_usd < 0