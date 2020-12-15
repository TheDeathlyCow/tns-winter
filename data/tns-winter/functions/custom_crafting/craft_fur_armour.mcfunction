# executed as fur in a cauldron
# at the item
# called by: tns-winter:custom_crafting/craft_item
execute if entity @s[nbt={Item:{Count:4b}}] run data merge entity @s {Item:{id:"minecraft:leather_boots",tag:{FurArmor:1b,display:{color:6043908,Name:'{"italic":false,"text":"Fur Boots"}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;-1739186949,1999719767,-2020519910,-700409258],Slot:"feet"}]},Count:1b}}
execute if entity @s[nbt={Item:{Count:8b}}] run data merge entity @s {Item:{id:"minecraft:leather_chestplate",tag:{FurArmor:1b,display:{color:6043908,Name:'{"italic":false,"text":"Fur Chestplate"}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1151118333,332221490,-1972623961,1527705620],Slot:"chest"}]},Count:1b}}
execute if entity @s[nbt={Item:{Count:5b}}] run data merge entity @s {Item:{id:"minecraft:leather_helmet",tag:{FurArmor:1b,display:{color:6043908,Name:'{"italic":false,"text":"Fur Helmet"}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-32622822,105860645,-1983883927,-46373960],Slot:"head"}]},Count:1b}}
execute if entity @s[nbt={Item:{Count:7b}}] run data merge entity @s {Item:{id:"minecraft:leather_leggings",tag:{FurArmor:1b,display:{color:6043908,Name:'{"italic":false,"text":"Fur Leggings"}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;722333511,1747799378,-1918859892,-1704503062],Slot:"legs"}]},Count:1b}}
playsound minecraft:entity.villager.work_shepherd master @a[distance=..15] ~ ~ ~
advancement grant @p only tns-winter:survival/craft_fur_armour


