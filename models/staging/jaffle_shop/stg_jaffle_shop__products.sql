with 

source as (

    select * from {{ source('jaffle_shop', 'products') }}

),

-- Adding a comment to demo CI job
renamed as (

    select
        sku,
        name as product_name,
        type as product_type,
        description,
        price*10.0 as price

    from source

)

select * from renamed
