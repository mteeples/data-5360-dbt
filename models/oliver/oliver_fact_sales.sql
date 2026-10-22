select
    o.customer_id as customer_key,
    o.order_date as date_key,
    o.store_id as store_key,
    ol.product_id as product_key,
    o.employee_id as employee_key,
    ol.quantity,
    ol.unit_price,
    ol.quantity * unit_price as dollars_sold

from {{ source("oliver_landing", "orderline") }} as ol

    join {{ source("oliver_landing", "orders") }} as o
        on ol.order_id = o.order_id
