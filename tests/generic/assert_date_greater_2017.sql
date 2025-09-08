{% test assert_date_greater_2017(model, column_name) %}

select
    {{ column_name }} 
from {{ model }}
where {{ column_name }} < '2018-01-01'

{% endtest %}