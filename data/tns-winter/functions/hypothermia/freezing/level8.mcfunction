# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:hypothermia/update_warmth_bar

title @s actionbar [{"text":"< ","color":"aqua"},{"text":"☠ ☠ ☠","color":"dark_blue"},{"text":" >","color":"aqua"}]
title @s times 0 20 0
title @s title [{"text":"You are freezing to death!","color":"blue"}]
title @s subtitle [{"text":"Find a campfire quickly!","color":"aqua"}]

effect give @s minecraft:slowness 1 4 true
effect give @s minecraft:weakness 1 2 true
effect give @s minecraft:mining_fatigue 1 2 true
effect give @s minecraft:blindness 2 0 true
effect give @s minecraft:wither 1 2 true