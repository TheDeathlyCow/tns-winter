# this function is called by a player to mark something in the snowflake dungeon
kill @e[type=armor_stand,tag=snowflakeExitNode]
execute align xz run summon armor_stand ~0.5 ~ ~0.5 {CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["snowflakeExitNode"],CustomName:'{"text":"[!!] Approach to exit [!!]","color":"yellow"}'}