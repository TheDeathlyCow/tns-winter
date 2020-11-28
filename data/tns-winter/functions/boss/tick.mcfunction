# as server at spawn
#
# called by: tns-winter:tick
scoreboard players add @a TimeSinceHit 1
execute as @e[type=falling_block,tag=iceologerAttack] at @s unless block ~ ~-0.2 ~ minecraft:air run function tns-winter:boss/iceologer/kill_blocks
execute at @e[type=falling_block,tag=iceologerAttack] as @a[dy=-0.1] unless score @s TimeSinceHit matches ..10 run function tns-winter:boss/iceologer/hit_player
