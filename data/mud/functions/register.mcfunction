function gu:generate
data modify storage mud:temp entity.uuid set from storage gu:main out
$data modify storage mud:temp entity.command set value "$(command)"
data modify storage mud:main tick_entries append from storage mud:temp entity
scoreboard players set @s mud.exist 1
$$(setup)