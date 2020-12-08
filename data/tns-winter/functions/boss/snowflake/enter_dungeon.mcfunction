# as players near entrance marker
# at entrance marker
# by tns-winter:boss/snowflake/check_every_second

tag @s add InSnowflake
teleport @s ~ ~-5 ~
tellraw @s {"text":"You have entered the snowflake!","color":"aqua"}
advancement grant @s only tns-winter:story/dungeons/enter_snowflake

scoreboard players set NumSnowflakePlayers winterDummy
execute as @a[tag=InSnowflake] run scoreboard players add NumSnowflakePlayers winterDummy 1
execute if score NumSnowflakePlayers winterDummy matches 1 run function tns-winter:boss/snowflake/reset
