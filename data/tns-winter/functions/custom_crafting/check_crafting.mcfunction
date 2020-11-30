# executed as all items except those tagged with "CraftingItemMarked"
# at the item
# called by: tns-winter:custom_crafting/tick
execute if block ~ ~ ~ minecraft:cauldron[level=3] run function tns-winter:custom_crafting/mark_cauldron_items
execute if block ~ ~-1 ~ minecraft:fletching_table run function tns-winter:custom_crafting/mark_fletching_items