with 

source2 as (

    select * from {{ source('jaffle_shop', 'orders') }}

),

renamed as (

    select
    -- adding a comment to demo CI job

        id as order_id,
        user_id as customer_id,
        order_date,
        status,
        _etl_loaded_at

    from source2

)

select * from renamed
