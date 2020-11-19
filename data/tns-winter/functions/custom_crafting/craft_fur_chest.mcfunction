# as: @a[scores={CraftFurChest=1}]
# at: @s
# called by: tns-winter:custom_crafting/tick

clear @s minecraft:rabbit_hide{Fur:1b,display:{Name:'{"italic":false,"text":"Fur"}'}} 8
give @s leather_chestplate{FurArmor:1b,display:{color:6043908,Name:'{"italic":false,"text":"Fur Chestplate"}'}} 1
playsound minecraft:entity.villager.work_fletcher master @s ~ ~ ~