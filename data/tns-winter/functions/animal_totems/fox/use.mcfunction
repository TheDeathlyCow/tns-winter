# as @a[scores={AnimalTotem=1}] at @s
#
# called by tns-winter:animal_totems/use_totem

effect give @s minecraft:speed 62 2
effect give @s minecraft:invisibility 32 0
scoreboard players add @s[scores={FoxTotemLevel=1..}] warmth 240
effect give @s[scores={FoxTotemLevel=2}] minecraft:invisibility 32 1

playsound minecraft:entity.fox.eat master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"The Spirit of the Fox grants you invisiblity and protection from the cold...","color":"#e8986f"}]