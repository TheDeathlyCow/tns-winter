# as @p
# at ambiguous
# called by command block
clear @s minecraft:lapis_lazuli 32
advancement grant @s only tns-winter:tasks/collect/lapis
advancement revoke @s only tns-winter:tasks/collect/lapis
tellraw @s {"text":"You gained 15 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players add @s Favour 15