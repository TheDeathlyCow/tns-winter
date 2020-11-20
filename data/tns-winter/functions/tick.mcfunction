
execute as @a at @s run function tns-winter:hypothermia/detect_biome

execute as @a at @s run function tns-winter:hypothermia/update_warmth_bar

execute store result score ticksUntilWarmthCheck winterDummy run time query gametime
scoreboard players operation ticksUntilWarmthCheck winterDummy %= ticksPerWarmthCheck winterDummy 
execute if score hypothermiaEnabled winterBoolean matches 1 if score ticksUntilWarmthCheck winterDummy matches 0 as @a at @s unless entity @s[tag=immuneToHypothermia] run function tns-winter:hypothermia/update_warmth

execute as @a if score @s winterDeaths matches 1.. run scoreboard players set @s warmth 0
execute as @a if score @s winterDeaths matches 1.. run scoreboard players set @s winterDeaths 0

execute as @a at @s run function tns-winter:custom_crafting/tick
function tns-winter:animal_totems/tick

# prevents players from making nether or end portals
execute as @a at @s if block ~ ~ ~ minecraft:nether_portal run setblock ~ ~ ~ minecraft:air destroy
execute as @a at @s if block ~ ~ ~ minecraft:end_portal run setblock ~ ~ ~ minecraft:air destroy