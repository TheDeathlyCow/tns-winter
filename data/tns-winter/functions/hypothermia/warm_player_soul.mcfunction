# EXECUTE AS ALL PLAYERS (@a)
# AT THIS ENTITY (@s)
# called by: tns-winter:hypothermia/soul_campfire_check

# say warm player soul

scoreboard players add @s warmth 30

scoreboard players set warmedPlayers winterBoolean 1

effect give @s[tag=BearTotem,scores={BearTotemLevel=2,warmth=-240..}] minecraft:regeneration 5 0