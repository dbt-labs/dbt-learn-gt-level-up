{% macro get_payment_methods(args) %}
    {% set payment_methods_query %}
        select
            distinct payment_method
        from {{ ref('raw_payments') }}
    {% endset %}

    {% set results=run_query(payment_methods_query) %}

    {{ log("######GET_PAYMENT_METHODS LOG START ######", info=True) }}

    {{ log(results, info=True) }}

    {% if execute %}
        {% set results_list=results.columns[0].values() %}
    {% else %}
        {% set results_list=[] %}
    {% endif %}

    {{ return(results_list) }}
    {{ log(results_list, info=True) }}
    {{ log("######GET_PAYMENT_METHODS LOG END ######", info=True) }}

{% endmacro %}