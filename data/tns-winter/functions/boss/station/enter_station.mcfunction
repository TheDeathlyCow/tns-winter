# as players without instation tag
# at station entrance
# by tns-winter:boss/station/check every second
teleport @s ~-1.5 ~ ~0.5
spawnpoint @s ~-1.5 ~ ~0.5
tag @s add InStation
tellraw @s {"text":"You have entered the Lost Station. Find the lost researcher to trade supplies for high level enchanted goods. You can exit through this door anytime.","color":"yellow"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 5 0.1

scoreboard players set NumStationPlayers winterDummy 0
execute as @a[tag=InStation] run scoreboard players add NumStationPlayers winterDummy 1
execute if score NumStationPlayers winterDummy matches 1 run function tns-winter:boss/station/first_player_enter

advancement grant @s only tns-winter:story/dungeons/enter_station