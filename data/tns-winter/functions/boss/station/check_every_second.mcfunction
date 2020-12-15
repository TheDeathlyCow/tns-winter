# called by tns-winter:boss/check every second as server at spawn
#
#

execute at @e[type=armor_stand,tag=stationEntrance,limit=1] run function tns-winter:boss/station/entrance_check
