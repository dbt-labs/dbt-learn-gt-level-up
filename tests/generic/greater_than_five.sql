{% test greater_than_five(model, column) %}

select {{column}} from {{model}} where {{column}} <=5

{% endtest %}