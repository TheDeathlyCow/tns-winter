# executed as fur in a cauldron
# at the item
# called by: tns-winter:custom_crafting/craft_item
execute if entity @s[nbt={Item:{Count:4b}}] run data merge entity @s {Item:{id:"minecraft:leather_boots",tag:{FurArmor:1b,display:{color:6043908,Name:'{"italic":false,"text":"Fur Boots"}'}},Count:1b}}
execute if entity @s[nbt={Item:{Count:8b}}] run data merge entity @s {Item:{id:"minecraft:leather_chestplate",tag:{FurArmor:1b,display:{color:6043908,Name:'{"italic":false,"text":"Fur Chestplate"}'}},Count:1b}}
execute if entity @s[nbt={Item:{Count:5b}}] run data merge entity @s {Item:{id:"minecraft:leather_helmet",tag:{FurArmor:1b,display:{color:6043908,Name:'{"italic":false,"text":"Fur Helmet"}'}},Count:1b}}
execute if entity @s[nbt={Item:{Count:7b}}] run data merge entity @s {Item:{id:"minecraft:leather_leggings",tag:{FurArmor:1b,display:{color:6043908,Name:'{"italic":false,"text":"Fur Leggings"}'}},Count:1b}}
playsound minecraft:entity.villager.work_fletcher master @a[distance=..15] ~ ~ ~
advancement grant @p only tns-winter:survival/craft_fur_armour


