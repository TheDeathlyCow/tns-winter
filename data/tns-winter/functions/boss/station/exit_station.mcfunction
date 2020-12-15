# as players without instation tag
# at station entrance
# by tns-winter:boss/station/check every second
teleport @s ~4.5 ~1 ~0.5
tag @s remove InStation
tellraw @s {"text":"You have left the Lost Station.","color":"red"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 5 0.1

scoreboard players set NumStationPlayers winterDummy 0
execute as @a[tag=InStation] run scoreboard players add NumStationPlayers winterDummy 1
execute if score NumStationPlayers winterDummy matches 0 run function tns-winter:boss/station/last_player_exit