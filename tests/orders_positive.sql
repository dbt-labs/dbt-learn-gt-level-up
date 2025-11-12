with orders as 
(select amount_usd 
    {{ ref('model_name') }}
)

select * 
from orders
where amount_usd < 0