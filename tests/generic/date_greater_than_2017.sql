{% test date_greater_than_2017(model,column_name)%}
select
{{column_name}}
from {{model}}
where {{column_name}}<'01-01-2018'
{%endtest%}