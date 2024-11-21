with 

source as (

    select * from {{ source('jaffle_shop', 'products') }}

),

renamed as (

    select
        sku,
        name as product_name,
        type as product_type,
        description,
        price * 10 as price

    from source

)

select * from renamed
