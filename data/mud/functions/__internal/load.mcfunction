scoreboard objectives add mud.exist dummy
scoreboard objectives add mud.time dummy
execute unless score gametime mud.time matches -2147483648.. run scoreboard players set gametime mud.time -2147483648
