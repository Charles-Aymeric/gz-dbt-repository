with

    source as (select * from {{ source("raw", "ship") }}),

    raw_ship as (

        select orders_id, shipping_fee, logcost as log_cost, CAST(ship_cost AS FLOAT64) AS ship_cost from source

    )

select *
from raw_ship
