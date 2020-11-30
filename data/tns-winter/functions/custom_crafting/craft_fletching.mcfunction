# executed as all items tagged with "CraftingItemMarked" who are ready to be crafted
# at the item
# called by: tns-winter:custom_crafting/craft_item
# say craft item
# SPECIFICALLY FOR THE CAULDRON
execute if entity @s[tag=CraftingItemMarked,nbt={Item:{id:"minecraft:arrow"}}] run function tns-winter:custom_crafting/tip_arrow

tag @s remove CraftingItemMarked
playsound minecraft:entity.villager.work_fletcher master @a[distance=..15] ~ ~ ~
