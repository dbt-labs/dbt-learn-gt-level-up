{% test assert_date_greater_2017(model, column_name) %}
select {{column_name}}
from {{ model }}
where year({{column_name}}) <= 2017
{% endtest %}