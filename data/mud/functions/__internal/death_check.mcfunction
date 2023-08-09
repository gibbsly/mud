data modify storage mud:temp entity set from storage mud:main tick_entries[-1]
data remove storage mud:main tick_entries[-1]
function mud:__internal/check with storage mud:temp entity