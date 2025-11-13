{% test not_null_v2(model, column_name) %}

with validation as (

    select
        {{ column_name }} as field_value

    from {{ model }}

),

validation_errors as (

    select
       field_value

    from validation
    -- if this is true, then even_field is actually odd!
    where field_value is null and field_value = ''

)

select *
from validation_errors

{% endtest %}