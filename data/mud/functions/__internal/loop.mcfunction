#ticking known entities
data modify storage mud:main tick set from storage mud:main all_entities
data remove storage mud:temp entity
data modify storage mud:temp entity set from storage mud:main tick[-1]
data remove storage mud:main tick[-1]
execute if data storage mud:temp entity.uuid run function mud:__internal/tick_all

#checking list
data modify storage mud:temp entity set from storage mud:main all_entities[-1]
data remove storage mud:main all_entities[-1]
function mud:__internal/check with storage mud:temp entity