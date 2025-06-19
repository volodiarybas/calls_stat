-- Get Percentage of completed calls by hour of the day
select 
	extract(hour from c.call_time) as "Hour",
	COUNT(*) AS "Total Calls",
	COUNT(*) FILTER (WHERE status = 'completed') as "Completed Calls",
	((COUNT(*) FILTER (WHERE status = 'completed'))::decimal / COUNT(*)) *100  as "Completed Calls %"
from calls c 
group by "Hour"
order by "Completed Calls %" desc;

-- Get Percentage of completed calls by day of the week
select 
	extract(dow from c.call_time) as "Day of the week",
	COUNT(*) AS "Total Calls",
	COUNT(*) FILTER (WHERE status = 'completed') as "Completed Calls",
	((COUNT(*) FILTER (WHERE status = 'completed'))::decimal / COUNT(*)) *100  as "Completed Calls %"
from calls c 
group by "Hour"
order by "Completed Calls %" desc;

-- Get Percentage of by call type
select
	c.call_type,
	COUNT(*) AS "Total Calls",
	COUNT(*) FILTER (WHERE status = 'completed') as "Completed Calls",
	((COUNT(*) FILTER (WHERE status = 'completed'))::decimal / COUNT(*)) *100  as "Completed Calls %"
from calls c 
group by call_type
order by "Completed Calls %" desc;