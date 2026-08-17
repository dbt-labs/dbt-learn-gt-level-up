{{
    config(
        materialized ='incremental',
        unique_key = 'order_id'
    )
}}

with 

source as (

    select * from {{ source('jaffle_shop', 'orders') }}
    {% if is_incremental() %}
        -- this filter will only be applied on an incremental run
        where _etl_loaded_at > (select max(_etl_loaded_at) from {{ this }}) 
    {% endif %}

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status,
        _etl_loaded_at

    from source

)

select * from renamed
