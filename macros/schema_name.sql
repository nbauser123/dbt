{% macro generate_schema_name(custom_schema_name, node) -%}
 
    {%- set manual_pr_schema = var('manual_pr_schema', '') -%}
    {%- set schema_mode = env_var('DBT_SCHEMA_MODE', 'personal') | lower -%}
    {%- set default_schema = target.schema -%}
 
    {%- if manual_pr_schema != '' -%}
 
        {{ manual_pr_schema | trim | upper }}
 
    {%- elif schema_mode == 'deploy' and custom_schema_name is not none -%}
 
        {{ custom_schema_name | trim | upper }}
 
    {%- else -%}
 
        {{ default_schema | trim | upper }}
 
    {%- endif -%}
 
{%- endmacro %}