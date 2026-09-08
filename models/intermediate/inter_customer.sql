SELECT *
FROM {{ source('src', 'customers') }} c
join {{source('src','orders') }} o
ON c.c_custkey = o.o_custkey
JOIN {{ source('src', 'nations') }} AS n
    ON c.c_nationkey = n.n_nationkey
JOIN {{ source('src', 'regions') }} AS r
    ON r.r_regionkey = n.n_regionkey
