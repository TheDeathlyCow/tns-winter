# as @a[scores={AnimalTotem=1}] at @s
#
# called by tns-winter:animal_totems/use_totem
tag @s add UsingTotem
effect give @s minecraft:jump_boost 62 1 
effect give @s minecraft:speed 62 2
execute as @e[distance=..30] unless entity @s[tag=UsingTotem] run effect give @s minecraft:glowing 62 0 true

# playsound minecraft:entity.fox.eat master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"The Spirit of the Rabbit grants you increased mobility and the ability to see through walls...","color":"#8f3c0b"}]
tag @s remove UsingTotem
