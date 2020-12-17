# as the snowflake entrance marker
# at @s 
# by tns-winter:boss/tick
tellraw @a[gamemode=survival,distance=..90] {"text":"[!!] Your gamemode has been updated to Adventure Mode!","color":"aqua"}
gamemode adventure @a[gamemode=survival,distance=..90]
tellraw @a[gamemode=adventure,distance=91..150] {"text":"[!!] Your gamemode has been updated to Survival Mode!","color":"aqua"}
gamemode survival @a[gamemode=adventure,distance=91..150]

execute if score NumSnowflakePlayers winterDummy matches ..0 run scoreboard players set NumSnowflakePlayers winterDummy 0
execute as @a[gamemode=adventure,distance=..5,tag=!InSnowflake,scores={SnowflakeRuns=..2}] run function tns-winter:boss/snowflake/enter_dungeon


execute at @e[type=armor_stand,tag=SnowflakeExitNodeOn,limit=1] as @a[tag=InSnowflake,distance=..1.5] run function tns-winter:boss/snowflake/leave_dungeon


execute as @a[tag=InSnowflake] store result score @s WinterHealth run data get entity @s Health

execute if score WinterBossStage winterDummy matches 1 run execute if entity @a[tag=InSnowflake,scores={WinterHealth=1..}] unless entity @e[tag=frostyMob,distance=..130] at @e[type=armor_stand,tag=snowflakeBossSpawn,limit=1] run function tns-winter:boss/snowflake/begin_boss_fight

execute if entity @a[tag=FightingBoss,scores={WinterHealth=1..}] unless entity @e[type=illusioner,tag=chillagerBoss] run function tns-winter:boss/boss_died