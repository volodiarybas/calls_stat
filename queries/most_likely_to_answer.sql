-- Get Percentage of completed calls by hour of the day
WITH call_counts AS (
 SELECT 
 EXTRACT(HOUR FROM call_time) AS hour,
 COUNT(*) AS total_calls,
 COUNT(*) FILTER (WHERE status = 'completed') AS completed_calls
 FROM calls
 GROUP BY hour
)
SELECT 
 hour,
 total_calls,
 completed_calls,
 ROUND(
 completed_calls::decimal / NULLIF(total_calls, 0) * 100, 2
 ) AS completed_calls_percentage
FROM call_counts
ORDER BY completed_calls_percentage DESC;

-- Get Percentage of completed calls by day of the week
WITH call_counts AS (
 SELECT 
 (EXTRACT(dow FROM call_time)) as day_of_the_week,
 COUNT(*) AS total_calls,
 COUNT(*) FILTER (WHERE status = 'completed') AS completed_calls
 FROM calls
 GROUP BY day_of_the_week
)
SELECT 
		day_of_the_week,
	 	total_calls,
	 	completed_calls,
	ROUND(
 		completed_calls::decimal / NULLIF(total_calls, 0) * 100, 2
 	) AS completed_calls_percentage
FROM call_counts 
ORDER BY completed_calls_percentage DESC;

-- Get Percentage of by call type
select
	c.call_type,
	COUNT(*) AS "Total Calls",
	COUNT(*) FILTER (WHERE status = 'completed') as completed_calls,
	((COUNT(*) FILTER (WHERE status = 'completed'))::decimal / COUNT(*)) *100  as completed_calls_percentage
from calls c 
group by call_type
order by completed_calls_percentage desc;