select n_name as name,
n_nationkey as nation_id,
n_regionkey region_id,
n_comment as commemt from {{ source('src','nations')}}