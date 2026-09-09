-- SELECT c.*,n.n_name,r.r_name
-- FROM {{ ref ('customer') }} c
-- join {{ref('orders') }} o
-- ON c.c_custkey = o.o_custkey
-- JOIN {{ ref('nations') }} AS n
--     ON c.c_nationkey = n.n_nationkey
-- JOIN {{ ref('regions') }} AS r
--     ON r.r_regionkey = n.n_regionkey


-- select * from {{ref('customer')}}

with customer as (select * from {{ ref('customer') }}),
nation as (select * from {{ ref('nations') }}),
region as (select * from {{ ref('regions') }})
select
    c.*,
    n.name as nation_name,
    r.name as region_name,
from customer c
join nation n on c.nation_id = n.nation_id
join region r on n.region_id = r.region_id