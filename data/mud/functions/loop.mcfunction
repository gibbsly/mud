#ticking known entities
data modify storage mud:main tick set from storage mud:main all_entities
data remove storage mud:temp entity
data modify storage mud:temp entity set from storage mud:main tick[0]
data remove storage mud:main tick[0]
execute unless data storage mud:temp entity.uuid run particle flame 0 -58 0
execute if data storage mud:temp entity.uuid run function mud:tick_all

#checking list
data modify storage mud:temp entity set from storage mud:main all_entities[0]
data remove storage mud:main all_entities[0]
function mud:check with storage mud:temp entity