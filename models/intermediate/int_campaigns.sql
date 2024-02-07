SELECT *
FROM {{ref('bing')}}
UNION ALL 
SELECT *
FROM {{ref('facebook', 'product', 'adwords')}}