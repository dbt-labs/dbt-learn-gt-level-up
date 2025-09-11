select order_date
from {{ ref('stg_jaffle_shop__orders') }}
where year(order_date) <= 2017