# Macro UUID Directory

This is a utility that allows you to run commands directly on entities based on UUID for versions 23w31a+

## Use

### #minecraft:tick

to register a summoned entity directly into the system you can do 

> `execute summon <entity> run function mud:register {command:"<command to run on this entity every tick>",setup:"<command to run on this entity right away, leave empty if you don't need to run something>"}`

to register a pre-existing entity into the system you call

> `function mud:register {command:"<command to run on this entity every tick>",setup:"<command to run on this entity right away, leave empty if you don't need to run something>"}`

### In `n` ticks

to register a summoned entity directly into the system you can do 

> `execute summon <entity> run function mud:schedule {time:<ticks until the command will run>,command:"<command to run on this entity every tick>",setup:"<command to run on this entity right away, leave empty if you don't need to run something>"}`

to register a pre-existing entity into the system you call

> `function mud:schedule {time:<ticks until the command will run>,command:"<command to run on this entity every tick>",setup:"<command to run on this entity right away, leave empty if you don't need to run something>"}`

## Other functions

`gu:generate` takes the UUID of the current entity and outputs it into the storage `gu:main out`