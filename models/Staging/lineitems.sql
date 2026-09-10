-- with source as (

--     select * from {{ source('src', 'lineitems') }}

-- ),

-- changed as (

--     select

--         l_orderkey as order_id,
--         l_partkey as part_id,
--         l_suppkey as supplier_id,

--         -- descriptions
--         l_linenumber as line_number,
--         l_comment as comment,
--         l_shipmode as ship_mode,
--         l_shipinstruct as ship_instructions,
        
--         -- numbers
--         l_quantity as quantity,
--         l_extendedprice as extended_price,
--         l_discount as discount_percentage,
--         l_tax as tax_rate,
        
--         -- status
--         l_linestatus as status_code,
--         l_returnflag as return_flag,
        
--         -- dates
--         l_shipdate as ship_date,
--         l_commitdate as commit_date,
--         l_receiptdate as receipt_date

--     from source

-- )

-- select * from changed
WITH source AS (

    SELECT * 
    FROM {{ source('src', 'lineitems') }}

),

changed AS (

    SELECT
        l_orderkey AS order_id,
        l_partkey AS part_id,
        l_suppkey AS supplier_id,

        -- descriptions
        l_linenumber AS line_number,
        l_comment AS comment,
        l_shipmode AS ship_mode,
        l_shipinstruct AS ship_instructions,
        
        -- numbers
        l_quantity AS quantity,
        l_extendedprice AS extended_price,
        l_discount AS discount_percentage,
        l_tax AS tax_rate,
        
        -- status
        l_linestatus AS status_code,
        l_returnflag AS return_flag,
        
        -- dates
        l_shipdate AS ship_date,
        l_commitdate AS commit_date,
        l_receiptdate AS receipt_date

    FROM source
)
SELECT * 
FROM changed