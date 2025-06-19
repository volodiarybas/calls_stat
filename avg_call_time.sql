-- ACERAGE CALL TIME;
select avg(c.duration_seconds) as "Average Call Duration" from calls c;

-- AVERAGE CALL TIME BY Agent
select 
	concat(a.first_name,' ', a.last_name)  as "Agent", 
	avg(c.duration_seconds) as "Average Call Duration" 
from calls c 
left join agents a on c.agent_id = a.id
group by a.id;