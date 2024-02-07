SELECT *
FROM {{ref('stg_raw__bing', 'stg_raw__facebook', 'stg_raw__product', 'stg_raw__adwords')}}
UNION ALL 
