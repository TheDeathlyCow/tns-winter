# as @p
# at ambiguous
# called by command block
clear @s #tns-winter:cooked_meat 8
advancement grant @s only tns-winter:tasks/collect/cooked_meat
advancement revoke @s only tns-winter:tasks/collect/cooked_meat
tellraw @s {"text":"You gained 30 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players add @s Favour 30