# as @a[scores={AnimalTotem=1}] at @s
#
# called by animal totems tick
effect give @s minecraft:blindness 2 0 true
execute if entity @s[tag=BeeTotem] run function tns-winter:animal_totems/bee/use
execute if entity @s[tag=FishTotem] run function tns-winter:animal_totems/fish/use
execute if entity @s[tag=FoxTotem] run function tns-winter:animal_totems/fox/use
execute if entity @s[tag=RabbitTotem] run function tns-winter:animal_totems/rabbit/use
execute if entity @s[tag=WolfTotem] run function tns-winter:animal_totems/wolf/use
execute if entity @s[tag=RavenTotem] run function tns-winter:animal_totems/raven/use

playsound minecraft:item.totem.use master @a[distance=..25] ~ ~ ~
particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.3 1000
scoreboard players set @s TotemCooldown 0