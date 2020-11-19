# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:tick

execute if score @s warmth matches -50.. run function tns-winter:hypothermia/freezing/level0
execute if score @s warmth matches -100..-50 run function tns-winter:hypothermia/freezing/level1
execute if score @s warmth matches -150..-100 run function tns-winter:hypothermia/freezing/level2
execute if score @s warmth matches -200..-150 run function tns-winter:hypothermia/freezing/level3
execute if score @s warmth matches -250..-200 run function tns-winter:hypothermia/freezing/level4
execute if score @s warmth matches -300..-250 run function tns-winter:hypothermia/freezing/level5
execute if score @s warmth matches -350..-300 run function tns-winter:hypothermia/freezing/level6
execute if score @s warmth matches -400..-350 run function tns-winter:hypothermia/freezing/level7
execute if score @s warmth matches ..-400 run function tns-winter:hypothermia/freezing/level8