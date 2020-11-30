# as the attack block of an iceologer, at @s
#
# called by: tns-winter:boss/tick
kill @s
playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1 0.7 1
# playsound minecraft:block.gravel.place master @a[distance=..25] ~ ~ ~ 1 0.5 1
playsound minecraft:entity.snow_golem.death master @a[distance=..25] ~ ~ ~ 0.5 1 
particle minecraft:dust 0.86 0.95 1 1 ~ ~ ~ 0.7 0.2 0.7 5 10
# particle minecraft:witch ~ ~ ~ 0.7 0.2 0.7 1 10
# particle minecraft:soul ~ ~ ~ 1 1 1 0.03 10
particle minecraft:item_snowball ~ ~ ~ 0.7 0.2 0.7 1 10