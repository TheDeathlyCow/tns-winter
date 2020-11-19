# EXECUTE AS ALL PLAYERS (@a)
# AT THIS ENTITY (@s)
# called by: tns-winter:tick 

# say "update warmth"

execute if block ~ ~ ~ minecraft:water run scoreboard players remove @s warmth 1

scoreboard players remove @s[tag=inMountains] warmth 3
scoreboard players remove @s[tag=inGlacier] warmth 3
scoreboard players remove @s[tag=inSnowTaiga] warmth 1
scoreboard players remove @s[tag=outsideMap] warmth 25


execute if entity @s[tag=inMountains] run function tns-winter:hypothermia/soul_campfire_check
execute if entity @s[tag=inGlacier] run function tns-winter:hypothermia/soul_campfire_check

execute unless entity @s[tag=inMountains] unless entity @s[tag=inGlacier] run function tns-winter:hypothermia/campfire_check

execute if score @s warmth matches ..-402 run scoreboard players set @s warmth -402
execute if score @s warmth matches 2.. run scoreboard players set @s warmth 2

scoreboard players set warmedPlayers winterBoolean 0