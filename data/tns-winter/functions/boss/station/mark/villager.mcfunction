# this function is called by a player to mark something in the station dungeon
kill @e[type=armor_stand,tag=stationVillager]
execute align xz run summon armor_stand ~0.5 ~ ~0.5 {CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["stationVillager"]}