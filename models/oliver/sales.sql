select
    c.first_name as customer_first_name,
    c.last_name as customer_last_name,
    d.date_key as sale_date,
    d.day_of_week,
    e.first_name as employee_first_name,
    e.last_name as employee_last_name,
    p.product_name,
    s.store_name,
    f.unit_price,
    f.quantity,
    f.dollars_sold

from {{ ref("oliver_fact_sales") }} as f

    left join {{ ref("oliver_dim_customer") }} as c
        on c.customer_key = f.customer_key

    left join {{ ref("oliver_dim_date") }} as d
        on d.date_key = f.date_key

    left join {{ ref("oliver_dim_employee") }} as e
        on e.employee_key = f.employee_key

    left join {{ ref("oliver_dim_product") }} as p
        on p.product_key = f.product_key

    left join {{ ref("oliver_dim_store") }} as s
        on s.store_key = f.store_key
