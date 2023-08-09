function mud:__internal/run with storage mud:temp entity
data remove storage mud:temp entity
data modify storage mud:temp entity set from storage mud:main tick[-1]
data remove storage mud:main tick[-1]
execute if data storage mud:temp entity.uuid run function mud:__internal/tick_all