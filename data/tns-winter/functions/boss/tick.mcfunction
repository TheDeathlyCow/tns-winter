# as server at spawn
#
# called by: tns-winter:tick
execute as @a[tag=FightingBoss] at @s run function tns-winter:boss/in_fight_tick
execute if entity @a[tag=FightingBoss] as @e[type=illusioner,tag=chillagerBoss,limit=1] at @s run function tns-winter:boss/update_bossbar
execute if entity @a[tag=FightingBoss] unless entity @e[type=illusioner,tag=chillagerBoss] run function tns-winter:boss/boss_died
execute as @e[type=falling_block,tag=iceologerAttack] at @s unless block ~ ~-1 ~ minecraft:air run function tns-winter:boss/iceologer/kill_blocks
execute at @e[type=falling_block,tag=iceologerAttack] as @a[dy=-0.1] unless score @s TimeSinceHit matches ..10 run function tns-winter:boss/iceologer/hit_player

