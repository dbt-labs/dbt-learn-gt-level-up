{% test greater_than_2017(model, column) %}

select Year({{column}}) from {{model}} where {{column}} <='2017'

{% endtest %}