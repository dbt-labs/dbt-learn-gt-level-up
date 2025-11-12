with orders as
(

    select * from {{ ref('fct_orders') }}
)

select * 
from orders
where amount_usd <= 0