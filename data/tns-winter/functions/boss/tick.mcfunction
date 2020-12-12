# as server at spawn
#
# called by: tns-winter:tick
# execute as @a[tag=InSnowflake] store result score @s WinterHealth run data get entity @s Health

execute as @a[tag=FightingBoss] at @s run function tns-winter:boss/in_fight_tick
execute if entity @a[tag=FightingBoss] as @e[type=illusioner,tag=chillagerBoss,limit=1] at @s run function tns-winter:boss/update_bossbar
execute as @e[type=falling_block,tag=iceologerAttack] at @s unless block ~ ~-1 ~ minecraft:air run function tns-winter:boss/iceologer/kill_blocks
execute at @e[type=falling_block,tag=iceologerAttack] as @a[dy=-0.1] unless score @s TimeSinceHit matches ..10 run function tns-winter:boss/iceologer/hit_player


execute if score ticksUntilWarmthCheck winterDummy matches 5 as @e[type=armor_stand,tag=frostyEvokerRider] at @s run function tns-winter:boss/frosty_evoker/tick
execute if score ticksUntilWarmthCheck winterDummy matches 15 as @e[type=armor_stand,tag=frostyEvokerRider] at @s run function tns-winter:boss/frosty_evoker/tick
execute if score ticksUntilWarmthCheck winterDummy matches 5 as @e[type=armor_stand,tag=snowflakeEntrance,limit=1] at @s run function tns-winter:boss/snowflake/check_every_second

execute as @a[scores={ExitSnowflake=1},tag=InSnowflake] at @s run function tns-winter:boss/snowflake/leave_dungeon
# scoreboard players enable @a[tag=InSnowflake] ExitSnowflake