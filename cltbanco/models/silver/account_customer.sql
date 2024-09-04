{{ config(materialized='table') }}

select
	account_id,
	a.customer_id,
	customer_city as city_id,
	created_at as account_created_at,
	status as account_status,
	account_branch,
	account_check_digit,
	account_number,
	first_name as customer_first_name,
	last_name as customer_last_name,
	cpf as customer_cpf
from
	{{ source('bronze', 'accounts') }} a
left join {{ source('bronze', 'customers') }} c
on
	c.customer_id = a.customer_id