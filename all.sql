/*for all tables*/

/*highest 10 burn calories*/
select top 10 m.name , s.calories_burned , w.workout_type
from members as m , sessions as s , workouts as w 
where m.id = s.members_id and s.workout_id = w.id
order by calories_burned desc

/*avg burning vs experience level*/
select experience_level , 
	(select avg (calories_burned) from sessions s where s.members_id in
		(select id from members where experience_level = m.experience_level )) as avg_calorie
from members m
group by experience_level

/*Elite people*/
select name , experience_level
from members
where id in (select members_id
			from sessions
			where avg_bpm >150
				and calories_burned > 1000
				and resting_bpm < 65)

