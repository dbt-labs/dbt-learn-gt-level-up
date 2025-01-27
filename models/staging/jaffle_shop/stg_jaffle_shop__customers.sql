with 

source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (
-- Add a comment for CI demo
    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed
