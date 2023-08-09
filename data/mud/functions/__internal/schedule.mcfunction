$data modify storage mud:main schedule.$(target_gametime) append from storage mud:temp entity
$schedule function mud:__internal/run_scheduled $(time)t append