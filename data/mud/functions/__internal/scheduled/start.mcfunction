$data modify storage mud:main current_schedule set from storage mud:main schedule.$(gametime)
$data remove storage mud:main schedule.$(gametime)
data remove storage mud:temp entity
data modify storage mud:temp entity set from storage mud:main current_schedule[-1]
data remove storage mud:main current_schedule[-1]
execute if data storage mud:temp entity.uuid run function mud:__internal/scheduled/run_all

#iterating fake gametime
scoreboard players add gametime mud.time 1