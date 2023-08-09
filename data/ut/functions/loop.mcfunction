#ticking known entities
data modify storage ut:main tick set from storage ut:main all_entities
data remove storage ut:temp entity
data modify storage ut:temp entity set from storage ut:main tick[0]
data remove storage ut:main tick[0]
execute unless data storage ut:temp entity.uuid run particle flame 0 -58 0
execute if data storage ut:temp entity.uuid run function ut:tick_all

#checking list
data modify storage ut:temp entity set from storage ut:main all_entities[0]
data remove storage ut:main all_entities[0]
function ut:check with storage ut:temp entity