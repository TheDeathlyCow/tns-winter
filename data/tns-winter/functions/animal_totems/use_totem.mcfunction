# as @a[scores={AnimalTotem=1}] at @s
#
# called by animal totems tick
effect give @s minecraft:blindness 5 0 true
execute if entity @s[tag=BeeTotem] run function tns-winter:animal_totems/bee/use
scoreboard players set @s TotemCooldown 0