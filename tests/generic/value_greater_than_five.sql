{% test greater_than_five(model,column_name) %}

select 
{{column}}
from {{model}}
where {{column_name}} <= 5

{% endtest %}