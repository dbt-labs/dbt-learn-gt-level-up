{% test not_null(model, column_name) %}

with validation as (

    select
        {{ column_name }} as field_value

    from {{ model }}

),

validation_errors as (

    select
        field_value

    from validation
    where field_value is null
    and field_value = ''
)

select *
from validation_errors

{% endtest %}