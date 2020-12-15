# as first player to enter station
# at station entrance
# called by tns-winter:boss/station/enter_dungeon

tellraw @a [{"text":"[!!] ","color":"dark_purple","bold":true},{"text":"A player has entered the Lost Station","color":"aqua"}]

teleport @e[tag=frostyMob,distance=..50] ~ -200 ~
execute at @e[type=armor_stand,tag=stationMobSpawn] run function tns-winter:boss/station/spawn_mobs

execute at @e[type=armor_stand,tag=stationVillager] run function tns-winter:boss/station/spawn_villager