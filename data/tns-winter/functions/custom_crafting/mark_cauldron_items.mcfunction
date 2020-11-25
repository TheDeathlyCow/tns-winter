# executed as all items not tagged with "CraftingItemMarked" inside of cauldrons with 3 levels of water
# at the item
# called by: tns-winter:custom_crafting/check_crafting
tag @s add CraftingItemMarked
execute if entity @s[type=item,nbt={Item:{id:"minecraft:potion",tag:{Potion:"minecraft:water"},Count:1b}}] run tag @s add WinterPotion
execute if entity @s[type=item,nbt={Item:{id:"minecraft:azure_bluet"}}] run tag @s add WinterPotionIngredient
execute if entity @s[type=item,nbt={Item:{id:"minecraft:cornflower"}}] run tag @s add WinterPotionIngredient
execute if entity @s[type=item,nbt={Item:{id:"minecraft:oxeye_daisy"}}] run tag @s add WinterPotionIngredient
execute if entity @s[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run tag @s add WinterPotionIngredient
tag @s[tag=WinterPotionIngredient] remove CraftingItemMarked

execute if entity @s[tag=CraftingItemMarked] run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0.05 15 
execute if entity @s[tag=WinterPotionIngredient] run particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0.05 15 
scoreboard players set @s CraftingTimer 0