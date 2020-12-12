# as snowflake entrance
# at @s
# by tns-winter:boss/snowflake/all_players_gone
execute as @e[tag=frostyMob,distance=..130] run data merge entity @s {Health:1b}
tp @e[tag=frostyMob,distance=..130] ~ -128 ~