# as players near entrance marker
# at entrance marker
# by tns-winter:boss/snowflake/enter_dungeon

execute as @e[type=armor_stand,tag=barrelNorth] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=barrelNorth] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=barrelNorth] at @s run setblock ~ ~ ~ barrel[facing=north]{LootTable:"tns-winter:chests/simple_dungeon"}

execute as @e[type=armor_stand,tag=barrelSouth] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=barrelSouth] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=barrelSouth] at @s run setblock ~ ~ ~ barrel[facing=south]{LootTable:"tns-winter:chests/simple_dungeon"}

execute as @e[type=armor_stand,tag=barrelEast] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=barrelEast] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=barrelEast] at @s run setblock ~ ~ ~ barrel[facing=east]{LootTable:"tns-winter:chests/simple_dungeon"}

execute as @e[type=armor_stand,tag=barrelWest] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=barrelWest] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=barrelWest] at @s run setblock ~ ~ ~ barrel[facing=west]{LootTable:"tns-winter:chests/simple_dungeon"}

execute as @e[type=armor_stand,tag=barrelUp] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=barrelUp] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=barrelUp] at @s run setblock ~ ~ ~ barrel[facing=up]{LootTable:"tns-winter:chests/simple_dungeon"}

teleport @e[type=evoker,tag=frostyEvoker] ~ -100 ~
execute as @e[type=armor_stand,tag=evokerSpawn,distance=..100] at @s run function tns-winter:boss/frosty_evoker/spawn 
execute as @e[type=armor_stand,tag=evokerSpawn,distance=..100] at @s run function tns-winter:boss/frosty_evoker/spawn_minions

scoreboard players set WinterBossStage winterDummy 1

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 6000 1
tellraw @a {"text":"The Snowflake is now reset, good luck adventurer!","color":"red"}