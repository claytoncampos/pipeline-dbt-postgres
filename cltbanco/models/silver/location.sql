--sobrepoe a conf e cria a tabela
{{ config(materialized='table') }}

select
	city_id ,
	c.state_id ,
	s.country_id ,
	city,
	state,
	country
from
	{{ source('bronze', 'city') }} c
left join {{ source('bronze', 'state') }} s 
	on s.state_id = c.state_id
left join {{ source('bronze', 'country') }} co
	on co.country_id = s.country_id