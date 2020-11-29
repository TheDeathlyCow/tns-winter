# as player
# at a falling block entity 
# called by tns-winter:boss/tick
scoreboard players set @a TimeSinceHit 0
scoreboard players remove @s warmth 120
effect give @s minecraft:instant_damage 1 0 true