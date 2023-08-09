function mud:run with storage mud:temp entity
data remove storage mud:temp entity
data modify storage mud:temp entity set from storage mud:main tick[0]
data remove storage mud:main tick[0]
execute if data storage mud:temp entity.uuid run function mud:tick_all