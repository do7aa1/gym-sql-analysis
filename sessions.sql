/* sessions */

select distinct( w.workout_type) , avg ( s.calories_burned) as avg_calories_burned
from sessions as s , workouts as w
where w.id = s.workout_id
group by w.workout_type
order by avg_calories_burned