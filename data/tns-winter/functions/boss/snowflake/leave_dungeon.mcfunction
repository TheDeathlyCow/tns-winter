
scoreboard players remove NumSnowflakePlayers winterDummy 1
scoreboard players reset @s ExitSnowflake
tag @s remove InSnowflake
tag @s remove FightingBoss
execute unless entity @a[tag=InSnowflake] as @e[type=armor_stand,tag=snowflakeEntrance,limit=1] at @s run function tns-winter:boss/snowflake/all_players_gone

execute at @e[type=armor_stand,tag=snowflakeEntrance,limit=1] run teleport @s ~ ~ ~10
execute at @e[type=armor_stand,tag=snowflakeEntrance,limit=1] run spawnpoint @s ~ ~ ~10

tellraw @s {"text":">>> You have left the Snowflake!","color":"red"}
execute at @e[type=armor_stand,tag=snowflakeEntrance,limit=1] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1