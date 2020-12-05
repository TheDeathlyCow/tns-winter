# as @a 
# at ambiguous
# called by tns-winter:favour/tick

advancement revoke @s only tns-winter:tasks/collect/fish_junk
tellraw @s {"text":"You gained 30 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players add @s Favour 30