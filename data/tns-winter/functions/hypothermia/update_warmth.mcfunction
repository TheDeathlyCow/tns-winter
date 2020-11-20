# EXECUTE AS ALL PLAYERS (@a)
# AT THIS ENTITY (@s)
# called by: tns-winter:tick 

# say "update warmth"

execute if block ~ ~ ~ minecraft:water unless entity @s[tag=FishTotem] run scoreboard players remove @s warmth 3
execute if block ~ ~1 ~ minecraft:water unless entity @s[tag=FishTotem] run scoreboard players remove @s warmth 3

scoreboard players remove @s[tag=inMountains] warmth 12
scoreboard players remove @s[tag=inGlacier] warmth 12
scoreboard players remove @s[tag=inSnowTaiga] warmth 6
scoreboard players remove @s[tag=outsideMap] warmth 120


# execute if entity @s[tag=inMountains] run function tns-winter:hypothermia/soul_campfire_check
function tns-winter:hypothermia/soul_campfire_check

execute if score warmedPlayers winterBoolean matches 0 unless entity @s[tag=inGlacier] run function tns-winter:hypothermia/campfire_check

# check fur armour
execute if score warmedPlayers winterBoolean matches 0 if entity @s[tag=inColdBiome] run function tns-winter:hypothermia/check_warmth_items

execute if score @s warmth matches ..-1921 run scoreboard players set @s warmth -1921 
execute if score @s warmth matches 0.. run scoreboard players set @s warmth 0

scoreboard players set warmedPlayers winterBoolean 0