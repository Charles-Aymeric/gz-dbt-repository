with

    source as (select * from {{ source("raw", "facebook") }}),

    raw_facebook as (

        select 
        date_date,
        paid_source,
        campaign_key,
        camPGN_name as campaign_name,
        CAST(ads_cost as FLOAT64) as ads_cost,
        impression,
        click
        from source

    )

select *
from raw_facebook