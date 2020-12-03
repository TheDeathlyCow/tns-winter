# as @p
# at ambiguous
# called by command block
clear @s minecraft:bone 32
advancement grant @s only tns-winter:tasks/collect/bone
advancement revoke @s only tns-winter:tasks/collect/bone
tellraw @s {"text":"You gained 20 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players add @s Favour 20