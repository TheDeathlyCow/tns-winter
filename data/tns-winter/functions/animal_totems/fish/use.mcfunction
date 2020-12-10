# as @a[scores={AnimalTotem=1}] at @s
#
# called by tns-winter:animal_totems/use_totem
effect give @s[scores={FishTotemLevel=1}] minecraft:luck 120 0
effect give @s[scores={FishTotemLevel=2}] minecraft:luck 120 1
effect give @s minecraft:water_breathing 300 0

playsound minecraft:entity.fishing_bobber.splash master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"The Spirit of the Fish imbues you with its power...","color":"red"}]