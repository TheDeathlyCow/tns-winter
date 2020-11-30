# executed as all a water bottle in a cauldron
# at the item
# called by: tns-winter:custom_crafting/craft_fletching
# say tip arrow
execute if entity @e[type=item,distance=..1,tag=WinterArrow,nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:poison"},Count:1b}}] run data merge entity @s {Item:{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:poison"}}}
kill @e[type=item,distance=..1,tag=WinterArrow]
advancement grant @p only tns-winter:survival/tip_arrow