# as: @a[scores={CraftFurHelmet=1}]
# at: @s
# called by: tns-winter:custom_crafting/tick

clear @s minecraft:rabbit_hide{Fur:1b,display:{Name:'{"italic":false,"text":"Fur"}'}} 5
give @s leather_helmet{FurArmor:1b,display:{color:6043908,Name:'{"italic":false,"text":"Fur Helmet"}'}} 1
playsound minecraft:entity.villager.work_fletcher master @s ~ ~ ~