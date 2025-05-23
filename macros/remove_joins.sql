{% macro remove_self_joins(table_ref, user_a_col, user_b_col) %}
    (
        select *
        from {{ table_ref }}
        where {{ user_a_col }} != {{ user_b_col }}
    )
{% endmacro %}
