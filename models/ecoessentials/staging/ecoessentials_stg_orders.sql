select
    customer_id,
    order_id,
    order_timestamp::date as order_date,
    order_timestamp::time as order_time
from {{ source("ecoessentials_transactional_db", 
"order") }}
