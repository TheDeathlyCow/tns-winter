# as last player to exit station
# at station entrance
# called by tns-winter:boss/station/exit_dungeon

execute at @e[type=armor_stand,tag=stationChestEast] run setblock ~ ~ ~ air
execute at @e[type=armor_stand,tag=stationChestEast] run kill @e[type=item,distance=..1]
execute at @e[type=armor_stand,tag=stationChestEast] run setblock ~ ~ ~ chest[facing=east]{LootTable:"tns-winter:chests/simple_dungeon"}

execute at @e[type=armor_stand,tag=stationChestWest] run setblock ~ ~ ~ air
execute at @e[type=armor_stand,tag=stationChestWest] run kill @e[type=item,distance=..1]
execute at @e[type=armor_stand,tag=stationChestWest] run setblock ~ ~ ~ chest[facing=west]{LootTable:"tns-winter:chests/simple_dungeon"}