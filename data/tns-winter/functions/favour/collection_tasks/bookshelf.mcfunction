# as @p
# at ambiguous
# called by command block
clear @s minecraft:bookshelf 8
advancement grant @s only tns-winter:tasks/collect/bookshelf
advancement revoke @s only tns-winter:tasks/collect/bookshelf
tellraw @s {"text":"You gained 30 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players add @s Favour 30