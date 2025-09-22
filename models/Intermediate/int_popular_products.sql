with
    order_items as (select * from {{ ref("stg_jaffle_shop__order_items") }}),
    item_order_count as (
        select product_id, product_name, count(order_item_id) as order_count
        from order_items
        group by product_id, product_name
    )
select product_id, product_name, order_count
from item_order_count
order by order_count desc
