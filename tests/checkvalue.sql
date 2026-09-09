{{ config(store_failures=true) }}

SELECT *
FROM {{ ref('orders') }}
WHERE total_price <= 880