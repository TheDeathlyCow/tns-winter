# as snowflake entrance
# at @s
# by leave dungeon
# tellraw @a [{"text":"[NOTICE] ","color":"#ab78de","bold":true},{"text":"All players have left the Snowflake!","color":"#0a99ff"}]
tellraw @a [{"text":"[!!] ","color":"dark_purple","bold":true},{"text":"All players have left the Snowflake!","color":"aqua"}]
scoreboard players set WinterBossStage winterDummy 0
execute at @e[type=armor_stand,tag=snowflakeIceBarrier,limit=1] run fill ~ ~ ~ ~2 ~ ~2 ice

data merge entity @e[type=armor_stand,tag=SnowflakeExitNodeOn,limit=1] {CustomNameVisible:0b} 
tag @e[type=armor_stand,tag=SnowflakeExitNodeOn,limit=1] remove SnowflakeExitNodeOn
bossbar remove minecraft:iceologer
teleport @e[type=illusioner,tag=chillagerBoss,sort=nearest,limit=1] ~ -100 ~ 
kill @e[type=illusioner,tag=chillagerBoss,sort=nearest,limit=1]

function tns-winter:boss/snowflake/remove_all_frosty_mobs
