# as snowflake entrance marker
# at snowflake boss spawn marker
# called by tns-winter:boss/snowflake/check_every_second
scoreboard players set WinterBossStage winterDummy 2
execute at @e[type=armor_stand,tag=snowflakeIceBarrier,limit=1] run fill ~ ~ ~ ~2 ~ ~2 air destroy
function tns-winter:boss/iceologer/spawn
tellraw @a [{"text":"[Iceologer] ","color":"0a99ff","bold":true},{"text":"I have arisen!","color":"aqua","bold":false}]
tag @a[tag=InSnowflake] add FightingBoss