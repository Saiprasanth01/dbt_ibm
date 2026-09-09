

{% test order_value(model, column_name, val) %}

SELECT *
FROM {{ model }}
WHERE {{ column_name }} <= {{ val }}

{% endtest %}