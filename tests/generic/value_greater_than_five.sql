{% test greater_than_five(model, column_name) %} -- best practice to be the same name as file name

select
{{column_name}}
from {{model}}
where {{column_name}} <= 5

{% endtest %}