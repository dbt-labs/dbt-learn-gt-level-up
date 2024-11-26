with fct_orders as (

    select * from {{ ref('fct_orders') }}
)

select * from fct_orders