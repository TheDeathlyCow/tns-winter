# as bear followers with full hunger
# at @s
# called by tns-winter:hypothermia/update_warmth

scoreboard players add @s warmth 6
execute if entity @s[gamemode=survival] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.001 5
execute if entity @s[gamemode=adventure] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.001 5
