select
    emaileventid as email_event_id,
    emailid as email_id,
    upper(emailname) as email_name,
    campaignid as campaign_id,
    upper(campaignname) as campaign_name,
    customerid as customer_id,
    subscriberid as subscriber_id,
    upper(subscriberemail) as subscriber_email,
    upper(subscriberfirstname) as subscriber_first_name,
    upper(subscriberlastname) as subscriber_last_name,
    sendtimestamp::date as send_date,
    sendtimestamp::time as send_time,
    upper(eventtype) as event_type,
    eventtimestamp::date as event_date,
    eventtimestamp::time as event_time
from {{ source("ecoessentials_salesforce", "marketing_emails") }}
