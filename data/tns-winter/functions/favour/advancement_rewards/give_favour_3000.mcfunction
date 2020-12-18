# as a player who just got an advancement
# at @s
# called by advancement
tellraw @s {"text":"You gained 3000 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players add @s Favour 3000
