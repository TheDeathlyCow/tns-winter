# EXECUTE AS ALL PLAYERS (@a)
# AT THIS ENTITY (@s)
# called by: tns-winter:hypothermia/campfire_check
# say warm player!
scoreboard players add @s warmth 24

# execute if score @s warmth matches 0.. run effect give @s minecraft:regeneration 3 0

scoreboard players set @s Warmed 1

effect give @s[tag=BearTotem,scores={BearTotemLevel=2,warmth=-240..}] minecraft:regeneration 5 0