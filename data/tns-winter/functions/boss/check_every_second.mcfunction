# as server
# at spawn
# called by tns-winter:boss/tick

execute as @e[type=armor_stand,tag=frostyEvokerRider] at @s run function tns-winter:boss/frosty_evoker/tick
execute as @e[type=armor_stand,tag=snowflakeEntrance,limit=1] at @s run function tns-winter:boss/snowflake/check_every_second
function tns-winter:boss/station/check_every_second