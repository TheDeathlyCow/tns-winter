# executed as fur in a cauldron
# at the item
# called by: tns-winter:custom_crafting/craft_item
execute if entity @s[nbt={Item:{Count:4b}}] run data merge entity @s {Item:{id:"minecraft:leather_boots",tag:{FurArmor:1b,display:{color:14011070,Name:'{"italic":false,"text":"Wool Boots"}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1718675957,-1892200809,-1740054451,-674729418],Slot:"feet"}]},Count:1b}}
execute if entity @s[nbt={Item:{Count:8b}}] run data merge entity @s {Item:{id:"minecraft:leather_chestplate",tag:{FurArmor:1b,display:{color:14011070,Name:'{"italic":false,"text":"Wool Chestplate"}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1718675957,-1892200809,-1740054451,-674729418],Slot:"chest"}]},Count:1b}}
execute if entity @s[nbt={Item:{Count:5b}}] run data merge entity @s {Item:{id:"minecraft:leather_helmet",tag:{FurArmor:1b,display:{color:14011070,Name:'{"italic":false,"text":"Wool Helmet"}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1718675957,-1892200809,-1740054451,-674729418],Slot:"head"}]},Count:1b}}
execute if entity @s[nbt={Item:{Count:7b}}] run data merge entity @s {Item:{id:"minecraft:leather_leggings",tag:{FurArmor:1b,display:{color:14011070,Name:'{"italic":false,"text":"Wool Leggings"}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1718675957,-1892200809,-1740054451,-674729418],Slot:"legs"}]},Count:1b}}
playsound minecraft:entity.villager.work_shepherd master @a[distance=..15] ~ ~ ~
advancement grant @p only tns-winter:survival/craft_wool_armour


