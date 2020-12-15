# as a player who just got an advancement
# at @s
# called by advancement
tellraw @s {"text":"You gained 30 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players add @s Favour 30
