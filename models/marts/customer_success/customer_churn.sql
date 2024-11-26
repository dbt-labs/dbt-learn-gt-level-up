with customers as (

    select * from {{ ref('dim_customers') }}
)

select * from customers