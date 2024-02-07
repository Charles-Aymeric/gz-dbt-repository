with

    source as (select * from {{ source("raw", "adwords") }}),

    raw_adwords as (

        select 
        date_date,
        paid_source,
        campaign_key,
        camPNG_name as campaign_name,
        CAST(ads_cost as FLOAT64) as ads_cost,
        impression,
        click
        from source

    )

select *
from raw_adwords
