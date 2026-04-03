{% macro limit_data_in_dev(column_name) %}
{% if target.name == 'developpement' %}
where {{column_name}} >=dataadd('day', -30, current_timestamp)
{% endif %}
{% endmacro %}