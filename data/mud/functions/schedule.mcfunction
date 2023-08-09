function gu:generate
data modify storage mud:temp entity.uuid set from storage gu:main out
$data modify storage mud:temp entity.command set value "$(command)"
scoreboard players operation target_gametime mud.time = gametime mud.time
execute store storage mud:temp target_gametime int 1 run scoreboard players add target_gametime mud.time $(time)
function mud:__internal/schedule with storage mud:temp
$$(setup)