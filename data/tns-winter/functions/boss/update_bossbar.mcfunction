# as iceologer boss
# at @s
# called by tns-winter:boss/tick
bossbar set minecraft:iceologer players @a[distance=..200]
execute store result bossbar minecraft:iceologer value run data get entity @s Health