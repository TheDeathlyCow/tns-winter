# as @a[scores={AnimalTotem=1}] at @s
#
# called by tns-winter:animal_totems/use_totem
tag @s add UsingTotem
effect give @s minecraft:strength 60 0
execute unless entity @a[distance=0.01..30] run function tns-winter:animal_totems/wolf/summon_pack 

# playsound minecraft:entity.fox.eat master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"The Spirit of the Wolf grants you strength and companionship...","color":"gray"}]
tag @s remove UsingTotem
