# as @p
# at ambiguous
# called by command block
clear @s minecraft:emerald 16
advancement grant @s only tns-winter:tasks/collect/emerald
advancement revoke @s only tns-winter:tasks/collect/emerald
tellraw @s {"text":"You gained 30 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players add @s Favour 30