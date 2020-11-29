# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:hypothermia/update_warmth_bar

title @s actionbar [{"text":"< ","color":"blue"},{"text":"🔥","color":"blue"},{"text":" >","color":"blue"}]
effect give @s minecraft:slowness 1 4 true
effect give @s minecraft:weakness 1 2 true
effect give @s minecraft:mining_fatigue 1 2 true
effect give @s minecraft:blindness 2 0 true