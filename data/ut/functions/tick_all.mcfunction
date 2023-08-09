function ut:run with storage ut:temp entity
data remove storage ut:temp entity
data modify storage ut:temp entity set from storage ut:main tick[0]
data remove storage ut:main tick[0]
execute if data storage ut:temp entity.uuid run function ut:tick_all