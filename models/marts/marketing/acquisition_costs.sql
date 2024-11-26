with page_views as (

    select * from {{ ref('fct_page_views') }}
)

select * from page_views