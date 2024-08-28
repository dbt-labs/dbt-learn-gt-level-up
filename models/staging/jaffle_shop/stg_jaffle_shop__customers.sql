with 

source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (
    -- Add a comment to demo CI job
    -- Add comment for CI job demo
    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed
