/*workouts*/

select distinct (workout_type) 
from workouts

select distinct (workout_type) , avg (workout_frequency) as avg_frequency
from workouts
group by workout_type
