# executed as all items not tagged with "CraftingItemMarked" on top of a fletching table
# at the item
# called by: tns-winter:custom_crafting/check_crafting
tag @s add CraftingItemMarked
execute if entity @s[type=item,nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"},Count:1b}}] run tag @s add WinterArrow


tag @s[tag=WinterArrow] remove CraftingItemMarked

execute if entity @s[tag=CraftingItemMarked] run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0.05 15 
execute if entity @s[tag=WinterArrow] run particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0.05 15 
scoreboard players set @s CraftingTimer 0