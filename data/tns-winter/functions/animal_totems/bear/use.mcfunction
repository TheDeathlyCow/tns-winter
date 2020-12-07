# as @a[scores={AnimalTotem=1}] at @s
#
# called by tns-winter:animal_totems/use_totem

effect give @s minecraft:regeneration 30 1
effect give @s minecraft:absorption 30 1
tellraw @s [{"text":"The Spirit of the the Polar Bear grants you healing...","color":"#0a99ff"}]