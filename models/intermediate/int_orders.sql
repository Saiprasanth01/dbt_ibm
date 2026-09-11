with source as (select * from {{ ref('lineitems') }}),

changed as (

    select

        order_id,
        part_id,
        supplier_id,

        -- descriptions
        line_number,
        comment,
        ship_mode,
        ship_instructions,
        
        -- numbers
        quantity, 
        
        -- status
        status_code,
         return_flag,
        
        -- dates
         ship_date,
         commit_date,
        receipt_date

    from source

)

select * from changed
