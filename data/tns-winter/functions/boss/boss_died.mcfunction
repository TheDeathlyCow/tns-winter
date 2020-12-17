# as server
#
# called by tns-winter:boss/tick
bossbar remove minecraft:iceologer
advancement grant @a[tag=FightingBoss] only tns-winter:story/dungeons/defeat_iceologer
scoreboard players add @a[tag=FightingBoss] Favour 1000
scoreboard players add @a[tag=FightingBoss] SnowflakeRuns 1
tellraw @a[tag=FightingBoss] {"text":"You gained 1000 favour!","color":"gold"}
execute at @a[tag=FightingBoss] run playsound minecraft:entity.player.levelup master @s ~ ~ ~
execute at @e[type=armor_stand,tag=snowflakeEntrance,limit=1] run playsound minecraft:music_disc.pigstep master @a[distance=..100] ~ ~ ~ 100 1
tag @a[tag=FightingBoss] remove FightingBoss

execute as @e[type=armor_stand,tag=snowflakeExitNode,limit=1] run function tns-winter:boss/snowflake/open_exit_node

