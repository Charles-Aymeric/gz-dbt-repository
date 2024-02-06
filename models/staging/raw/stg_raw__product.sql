with 

source as (

    select * from {{ source('raw', 'product') }}

),

raw_products as (

    select
        products_id,
        CAST(purchse_price AS FLOAT64) as purchase_price

    from source

)

select * from raw_products
