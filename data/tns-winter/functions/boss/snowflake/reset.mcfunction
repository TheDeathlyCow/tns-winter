execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1 1 1
tellraw @a {"text":"The Snowflake is now reset, good luck adventurer!","color":"red"}

execute as @e[type=armor_stand,tag=barrelNorth] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=barrelNorth] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=barrelNorth] at @s run setblock ~ ~ ~ barrel[facing=north]{LootTable:"minecraft:chests/simple_dungeon"}

execute as @e[type=armor_stand,tag=barrelSouth] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=barrelSouth] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=barrelSouth] at @s run setblock ~ ~ ~ barrel[facing=south]{LootTable:"minecraft:chests/simple_dungeon"}

execute as @e[type=armor_stand,tag=barrelEast] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=barrelEast] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=barrelEast] at @s run setblock ~ ~ ~ barrel[facing=east]{LootTable:"minecraft:chests/simple_dungeon"}

execute as @e[type=armor_stand,tag=barrelWest] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=barrelWest] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=barrelWest] at @s run setblock ~ ~ ~ barrel[facing=west]{LootTable:"minecraft:chests/simple_dungeon"}

execute as @e[type=armor_stand,tag=barrelUp] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=barrelUp] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=barrelUp] at @s run setblock ~ ~ ~ barrel[facing=up]{LootTable:"minecraft:chests/simple_dungeon"}