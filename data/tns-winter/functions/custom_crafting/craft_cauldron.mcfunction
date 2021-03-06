# executed as all items tagged with "CraftingItemMarked" who are ready to be crafted
# at the item
# called by: tns-winter:custom_crafting/craft_item
# say craft item
# SPECIFICALLY FOR THE CAULDRON
execute if entity @s[nbt={Item:{id:"minecraft:rabbit_hide",tag:{Fur:1b}}}] run function tns-winter:custom_crafting/craft_fur_armour
execute if entity @s[nbt={Item:{id:"minecraft:potion",tag:{Potion:"minecraft:water"},Count:1b}}] run function tns-winter:custom_crafting/brew_potion

execute if entity @s[nbt={Item:{id:"minecraft:white_wool"}}] run function tns-winter:custom_crafting/craft_wool_armour
execute if entity @s[nbt={Item:{id:"minecraft:brown_wool"}}] run function tns-winter:custom_crafting/craft_wool_armour
execute if entity @s[nbt={Item:{id:"minecraft:gray_wool"}}] run function tns-winter:custom_crafting/craft_wool_armour
execute if entity @s[nbt={Item:{id:"minecraft:light_gray_wool"}}] run function tns-winter:custom_crafting/craft_wool_armour
execute if entity @s[nbt={Item:{id:"minecraft:pink_wool"}}] run function tns-winter:custom_crafting/craft_pink_wool_armour
execute if entity @s[nbt={Item:{id:"minecraft:black_wool"}}] run function tns-winter:custom_crafting/craft_wool_armour


tag @s remove CraftingItemMarked
setblock ~ ~ ~ minecraft:cauldron[level=0]
playsound minecraft:entity.villager.work_leatherworker master @a[distance=..15] ~ ~ ~
