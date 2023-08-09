function gu:generate
data modify storage ut:temp entity.uuid set from storage gu:main out
$data modify storage ut:temp entity.command set value "$(command)"
data modify storage ut:main all_entities append from storage ut:temp entity
scoreboard players set @s ut.exist 1