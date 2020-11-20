# as @a[scores={AnimalTotem=1}] at @s
#
# called by tns-winter:animal_totems/use_totem
effect give @s minecraft:luck 120 1
effect give @s minecraft:water_breathing 300 0

playsound minecraft:entity.fishing_bobber.splash master @s ~ ~ ~ 1 1 1
tellraw @a [{"text":"The Fish grants you better fortune from hunting and the ability to swim without drowning or freezing...","color":"red"}]