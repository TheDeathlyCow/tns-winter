# executed as all items tagged with "CraftingItemMarked" who are ready to be crafted
# at the item
# called by: tns-winter:custom_crafting/tick
# say craft item
execute if block ~ ~ ~ minecraft:cauldron[level=3] run function tns-winter:custom_crafting/craft_cauldron
execute if block ~ ~-1 ~ minecraft:fletching_table unless block ~ ~ ~ minecraft:cauldron[level=3] run function tns-winter:custom_crafting/craft_fletching
