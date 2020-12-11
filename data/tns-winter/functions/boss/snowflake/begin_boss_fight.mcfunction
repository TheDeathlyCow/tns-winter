# as snowflake entrance marker
# at snowflake boss spawn marker
# called by tns-winter:boss/snowflake/check_every_second
execute at @e[type=armor_stand,tag=snowflakeIceBarrier,limit=1] run fill ~ ~ ~ ~2 ~ ~2 air destroy
