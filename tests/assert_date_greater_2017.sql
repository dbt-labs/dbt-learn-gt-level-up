{% test assert_date_greater(model,column) %}

SELECT * 
FROM {{ model }}
WHERE DATE({{column}}) < '2018-01-01'

{% endtest %}
