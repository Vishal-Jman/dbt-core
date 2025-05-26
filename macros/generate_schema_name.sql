{% macro generate_schema_name(custom_schema_name, node) -%}
 
    {# Use the default schema if custom schema not provided #}
    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}
        {%- set schema_name = default_schema -%}
    {%- else -%}
        {%- set schema_name = custom_schema_name | trim -%}
    {%- endif -%}
 
    {{ schema_name }}
 
{%- endmacro %}
 