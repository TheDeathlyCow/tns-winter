# as the snowflake entrance marker
# at @s 
# by tns-winter:boss/tick
tellraw @a[gamemode=survival,distance=..90] {"text":"[!!] Your gamemode has been updated to Adventure Mode!","color":"aqua"}
gamemode adventure @a[gamemode=survival,distance=..90]
tellraw @a[gamemode=adventure,distance=91..150] {"text":"[!!] Your gamemode has been updated to Survival Mode!","color":"aqua"}
gamemode survival @a[gamemode=adventure,distance=91..150]

execute as @a[gamemode=adventure,distance=..5,tag=!InSnowflake] run function tns-winter:boss/snowflake/enter_dungeon