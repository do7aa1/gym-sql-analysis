/* sessions */

/*best workout for burn calories*/
select distinct( w.workout_type) , avg ( s.calories_burned) as avg_calories_burned
from sessions as s , workouts as w
where w.id = s.workout_id
group by w.workout_type
order by avg_calories_burned desc

/*longest session l kol type*/
select w.workout_type , max (s.session_duration) as session_duration
from workouts as w , sessions as s
where w.id = s.workout_id
group by w.workout_type

/*max. HR */
select name , (select max(max_bpm) from sessions ) as bpm
from members
where id in (
	select members_id
	from sessions
	where max_bpm = (select max(max_bpm) from sessions )
	)

/*avg water intake l kol type*/
select w.workout_type , avg (s.water_intake) as water_intake
from workouts as w , sessions as s
where w.id = s.workout_id
group by w.workout_type
order by water_intake desc
