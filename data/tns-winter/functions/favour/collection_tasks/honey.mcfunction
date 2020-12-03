# as @p
# at ambiguous
# called by command block
clear @s minecraft:honey_block 8
advancement grant @s only tns-winter:tasks/collect/honey
advancement revoke @s only tns-winter:tasks/collect/honey
tellraw @s {"text":"You gained 10 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players add @s Favour 10