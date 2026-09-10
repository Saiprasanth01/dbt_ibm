
select r_regionkey region_id,R_NAME name,R_COMMENT comment from {{ source('src','regions')}}
