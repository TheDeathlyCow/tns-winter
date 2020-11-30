# executed as all a water bottle in a cauldron
# at the item
# called by: tns-winter:custom_crafting/craft_item

# brewing potion ids:
# 0: hunger / mistake
# 1: regen
# 2: fire resistance
# 3: instant hp 1
# 4: minor absorption
# 5: speed
# 6: strong harming
# 7: poison
# say brew potion
scoreboard players set @s wntrPotionID 0
execute if entity @e[type=item,distance=..1,tag=WinterPotionIngredient,nbt={Item:{id:"minecraft:azure_bluet",Count:4b}}] run scoreboard players set @s wntrPotionID 1
execute if score @s wntrPotionID matches 0 if entity @e[type=item,distance=..1,tag=WinterPotionIngredient,nbt={Item:{id:"minecraft:cornflower",Count:4b}}] run scoreboard players set @s wntrPotionID 2
execute if score @s wntrPotionID matches 0 if entity @e[type=item,distance=..1,tag=WinterPotionIngredient,nbt={Item:{id:"minecraft:oxeye_daisy",Count:4b}}] run scoreboard players set @s wntrPotionID 4
execute if score @s wntrPotionID matches 0 if entity @e[type=item,distance=..1,tag=WinterPotionIngredient,nbt={Item:{id:"minecraft:sweet_berries",Count:8b}}] run scoreboard players set @s wntrPotionID 3
execute if score @s wntrPotionID matches 0 if entity @e[type=item,distance=..1,tag=WinterPotionIngredient,nbt={Item:{id:"minecraft:sugar",Count:2b}}] run scoreboard players set @s wntrPotionID 5
execute if score @s wntrPotionID matches 0 if entity @e[type=item,distance=..1,tag=WinterPotionIngredient,nbt={Item:{id:"minecraft:fermented_spider_eye",Count:1b}}] run scoreboard players set @s wntrPotionID 6
execute if score @s wntrPotionID matches 0 if entity @e[type=item,distance=..1,tag=WinterPotionIngredient,nbt={Item:{id:"minecraft:poppy",Count:4b}}] run scoreboard players set @s wntrPotionID 7
execute if score @s wntrPotionID matches 0 if entity @e[type=item,distance=..1,tag=WinterPotionIngredient,nbt={Item:{id:"minecraft:spider_eye",Count:4b}}] run scoreboard players set @s wntrPotionID 8

kill @e[type=item,distance=..1,tag=WinterPotionIngredient]
execute if score @s wntrPotionID matches 0 run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Mysterious Potion"}'},HideFlags:32,CustomPotionEffects:[{Id:17b,Amplifier:9b,Duration:600}],CustomPotionColor:3434834}}}
execute if score @s wntrPotionID matches 1 run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Minor Potion of Regeneration"}'},CustomPotionEffects:[{Id:10b,Amplifier:0b,Duration:200}]}}}
execute if score @s wntrPotionID matches 2 run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Minor Potion of Fire Resistance"}'},CustomPotionEffects:[{Id:12b,Amplifier:0b,Duration:200}]}}}
execute if score @s wntrPotionID matches 3 run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Minor Potion of Instant Health"}'},CustomPotionEffects:[{Id:6b,Amplifier:0b,Duration:1},{Id:17b,Amplifier:0b,Duration:600}]}}}
execute if score @s wntrPotionID matches 4 run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Minor Potion of Absorption"}'},CustomPotionEffects:[{Id:22b,Amplifier:0b,Duration:300}],CustomPotionColor:16777003}}}
execute if score @s wntrPotionID matches 5 run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Minor Potion of Speed"}'},CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:300}]}}}
execute if score @s wntrPotionID matches 6 run data merge entity @s {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
execute if score @s wntrPotionID matches 7 run data merge entity @s {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:poison"}}}
execute if score @s wntrPotionID matches 8 run data merge entity @s {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:harming"}}}


advancement grant @p only tns-winter:survival/brew_potion
playsound minecraft:entity.villager.work_cleric master @a[distance=..15] ~ ~ ~

