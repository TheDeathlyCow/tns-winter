# as the attack block of an iceologer, at @s
#
# called by: tns-winter:boss/tick
kill @s
playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1 0.7 1
playsound minecraft:block.gravel.place master @a[distance=..25] ~ ~ ~ 1 0.5 1
particle minecraft:dust 0.86 0.95 1 1 ~ ~ ~ 0.7 0.2 0.7 5 10
