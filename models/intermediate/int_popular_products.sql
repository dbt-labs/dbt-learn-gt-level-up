with 

order_items as (

    select * from {{ ref('stg_jaffle_shop__order_items') }}

),



product_counts as (

    select
        product_id,
        product_name,
        count(order_item_id) as purchase_count
    from order_items
    group by product_id, product_name
    order by purchase_count desc

)

select * from product_counts
