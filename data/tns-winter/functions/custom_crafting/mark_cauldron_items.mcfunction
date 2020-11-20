# executed as all items not tagged with "CraftingItemMarked" inside of cauldrons with 3 levels of water
# at the item
# called by: tns-winter:custom_crafting/check_crafting
tag @s add CraftingItemMarked
particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0.05 15 
scoreboard players set @s CraftingTimer 0