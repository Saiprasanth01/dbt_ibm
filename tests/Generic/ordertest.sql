
{% test order_value(model,column_name,val)%}
SELECT *
FROM {{ model }} where{{column_name}}<={{val}}
{% endtest %}