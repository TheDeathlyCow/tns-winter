# as: @a
# at: @s
# called by: tns-winter:tick

execute if entity @s[scores={CraftFurHelmet=1}] if predicate tns-winter:crafting/fur_helmet run function tns-winter:custom_crafting/craft_fur_helmet
execute if entity @s[scores={CraftFurChest=1}] if predicate tns-winter:crafting/fur_chestplate run function tns-winter:custom_crafting/craft_fur_chest
execute if entity @s[scores={CraftFurLegs=1}] if predicate tns-winter:crafting/fur_leggings run function tns-winter:custom_crafting/craft_fur_leggings
execute if entity @s[scores={CraftFurBoots=1}] if predicate tns-winter:crafting/fur_boots run function tns-winter:custom_crafting/craft_fur_boots

scoreboard players set @a CraftFurHelmet 0
scoreboard players set @a CraftFurChest 0
scoreboard players set @a CraftFurLegs 0
scoreboard players set @a CraftFurBoots 0

scoreboard players enable @a CraftFurHelmet
scoreboard players enable @a CraftFurChest
scoreboard players enable @a CraftFurLegs
scoreboard players enable @a CraftFurBoots