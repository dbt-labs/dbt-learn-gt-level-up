select
order_date
from {{ ref('stg_jaffle_shop__orders') }}
where date_part('year',order_date) < '2018'