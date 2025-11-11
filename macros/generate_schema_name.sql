{% macro generate_schema_name(custom_schema_name, node) -%}
    {# Set the default schema from the target configuration #}
    {%- set default_schema = target.schema -%}
    
    {# If no custom schema was provided #}
    {%- if custom_schema_name is none -%}
        {{ default_schema }}
        
    {# For production runs, use the custom schema as specified #}
    {%- elif target.name == 'prod' -%}
        {{ custom_schema_name | trim }}
        
    {# For development runs, use only the default schema to avoid suffixes #}
    {%- else -%}
        {{ default_schema }}
        
    {%- endif -%}
{%- endmacro %}
