# EXECUTE AS ALL PLAYERS (@a)
# AT THIS ENTITY (@s)
# called by: tns-winter:hypothermia/update_warmth
execute if predicate tns-winter:warmth_items/wearing_fur_helmet run scoreboard players add @s warmth 1 
execute if predicate tns-winter:warmth_items/wearing_fur_chestplate run scoreboard players add @s warmth 1 
execute if predicate tns-winter:warmth_items/wearing_fur_leggings run scoreboard players add @s warmth 1 
execute if predicate tns-winter:warmth_items/wearing_fur_boots run scoreboard players add @s warmth 1 
execute if predicate tns-winter:warmth_items/holding_warm_main run scoreboard players add @s warmth 1
execute if predicate tns-winter:warmth_items/holding_warm_off run scoreboard players add @s warmth 1
