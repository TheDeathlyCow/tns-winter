

execute as @a[dx=1.75,dy=5,dz=1,tag=!InStation,gamemode=adventure] run function tns-winter:boss/station/enter_station
execute as @a[dx=-0.75,dy=3,dz=1,tag=InStation,gamemode=adventure] run function tns-winter:boss/station/exit_station


tellraw @a[gamemode=survival,distance=..50] {"text":"You are apporoaching the Lost Station. Your gamemode has been set to Adventure.","color":"aqua"}
playsound minecraft:block.note_block.cow_bell master @a[gamemode=survival,distance=..50] ~ ~ ~ 50
gamemode adventure @a[gamemode=survival,distance=..50]

tellraw @a[gamemode=adventure,distance=50.001..150] {"text":"You are leaving the Lost Station. Your gamemode has been set to Survival.","color":"aqua"}
playsound minecraft:block.note_block.cow_bell master @a[gamemode=adventure,distance=50.001..150] ~ ~ ~ 150
gamemode survival @a[gamemode=adventure,distance=50.001..150]
