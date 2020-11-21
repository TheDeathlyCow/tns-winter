# as @a[scores={AnimalTotem=1}] at @s
#
# called by animal totems tick
effect give @s minecraft:blindness 2 0 true
execute if entity @s[tag=BeeTotem] run function tns-winter:animal_totems/bee/use
execute if entity @s[tag=FishTotem] run function tns-winter:animal_totems/fish/use
execute if entity @s[tag=FoxTotem] run function tns-winter:animal_totems/fox/use

scoreboard players set @s TotemCooldown 0