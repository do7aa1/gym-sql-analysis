/* members */

/* 3dd kol gender*/
select  gender , count(*) as total 
from members
group by gender

/*avg age l kol gender */
select gender , avg (age ) as avg_age
from members
group by gender

/*top 15 mn na7yt el weight*/
select top 15 id, name , weight , fat_percentage
from members
order by weight desc

/*top 15 body fat*/
select top 15 id,name,fat_percentage , weight
from members
order by fat_percentage desc

/*age slicer*/
select
	case 
		when age < 25 then 'young'
		when age > 40 then 'older'
		else 'adult'
	end as age_group,
	count(*) as total
from members
group by
	case 
		when age < 25 then 'young'
		when age > 40 then 'older'
		else 'adult'
	end
order by total desc;