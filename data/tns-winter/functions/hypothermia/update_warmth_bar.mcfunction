# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:tick

execute if score @s warmth matches -240.. run function tns-winter:hypothermia/freezing/level0
execute if score @s warmth matches -480..-240 run function tns-winter:hypothermia/freezing/level1
execute if score @s warmth matches -720..-480 run function tns-winter:hypothermia/freezing/level2
execute if score @s warmth matches -960..-720 run function tns-winter:hypothermia/freezing/level3
execute if score @s warmth matches -1200..-960 run function tns-winter:hypothermia/freezing/level4
execute if score @s warmth matches -1440..-1200 run function tns-winter:hypothermia/freezing/level5
execute if score @s warmth matches -1680..-1440 run function tns-winter:hypothermia/freezing/level6
execute if score @s warmth matches -1920..-1680 run function tns-winter:hypothermia/freezing/level7
execute if score @s warmth matches ..-1920 run function tns-winter:hypothermia/freezing/level8

scoreboard players remove @a TicksUntilHeart 1
execute as @a[scores={TicksUntilHeart=0,warmth=..-1680}] at @s run function tns-winter:hypothermia/freezing/heartbeat2