# EXECUTE AS ALL PLAYERS (@a)
# AT THIS ENTITY (@s)
# called by: tns-winter:hypothermia/campfire_check

scoreboard players add @s warmth 12

# execute if score @s warmth matches 0.. run effect give @s minecraft:regeneration 3 0

scoreboard players set warmedPlayers winterBoolean 1