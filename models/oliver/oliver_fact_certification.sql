select
    certification_awarded_date as date_key,
    employee_id as employee_key,
    certification_name,
    certification_cost

from {{ ref('oliver_stg_employee_certifications') }}
