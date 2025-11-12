{% test assert_positive_values(model, column_name) %}

with validation as (

    select
        {{ column_name }} as field_value

    from {{ model }}

),

validation_errors as (

    select
        field_value

    from validation
    where field_value < 0

)

select *
from validation_errors

{% endtest %}