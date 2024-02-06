with 

source as (

    select * from {{ source('raw', 'product') }}

),

raw_products as (

    select
        products_id,
        purchse_price as purchase_price

    from source

)

select * from raw_products
