{% macro get_payment_methods() %}

{% set payment_methods_query %}
    select distinct
    payment_method
    from {{ ref('raw_payments') }}
    order by 1
{% endset %}

{% set results = run_query(payment_methods_query) %}
{{ log(results, info=True) }}
{% if execute %}
{# Return the first column #}
{% set results_list = results.columns[0].values() %}
{{ log(results_list, info=True) }}
{% else %}
{% set results_list = [] %}
{% endif %}

{{ return(results_list) }}

{% endmacro %}