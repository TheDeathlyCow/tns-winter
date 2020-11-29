# as server at spawn
#
# called by: tns-winter:tick
scoreboard players add @a[tag=FightingBoss] TimeSinceHit 1
scoreboard players operation @a[tag=FightingBoss] TimeSinceHit %= ticksPerIceAttack winterDummy
execute as @a[tag=FightingBoss,scores={TimeSinceHit=99}] at @s if entity @e[type=minecraft:illusioner,distance=..20] run function tns-winter:boss/iceologer/ice_attack
execute as @e[type=falling_block,tag=iceologerAttack] at @s unless block ~ ~-1 ~ minecraft:air run function tns-winter:boss/iceologer/kill_blocks
execute at @e[type=falling_block,tag=iceologerAttack] as @a[dy=-0.1] unless score @s TimeSinceHit matches ..10 run function tns-winter:boss/iceologer/hit_player

execute as @a[advancements={tns-winter:hidden/hit_by_iceologer=true}] at @s run function tns-winter:boss/iceologer/player_take_shot
