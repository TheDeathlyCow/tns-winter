# as a frost spirit rider on the ground
# at @s
# called by tns-winter:boss/frost_spirit/tick

tellraw @a[gamemode=creative] ["",{"text":"[DEBUG] I had ","color":"aqua"},{"score":{"name":"@s","objective":"HeatAbsorbed"},"color":"aqua"},{"text":" HeatAbsorbed!","color":"aqua"}]


execute store result score @s NearbyAnimals if entity @a[distance=..25]
scoreboard players operation @s HeatAbsorbed /= @s NearbyAnimals
scoreboard players operation @a[distance=..25] warmth += @s HeatAbsorbed
tellraw @a[distance=..25] ["",{"text":"You gained ","color":"aqua"},{"score":{"name":"@s","objective":"HeatAbsorbed"},"color":"aqua"},{"text":" warmth from the nearby Frost Spirit!","color":"aqua"}]
execute as @a[distance=..25] at @s run playsound minecraft:entity.player.breath master @s ~ ~ ~ 1 1 1
particle minecraft:reverse_portal ~ ~ ~ 1 1 1 1 500
kill @s