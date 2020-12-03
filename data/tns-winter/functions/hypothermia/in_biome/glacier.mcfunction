# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:hypothermia/detect_biome
title @s times 10 40 20
execute unless entity @s[tag=inGlacier] run title @s title {"text":"The Glacier","color":"dark_purple","bold":true}
execute unless entity @s[tag=inGlacier] run title @s subtitle {"text":"❄❄❄❄","color":"dark_red","bold":false}
tag @s add inGlacier
tag @s add inColdBiome
tag @s remove inMountains
tag @s remove inSnowTaiga
tag @s remove inTaiga
tag @s remove inOcean
tag @s remove outsideMap

scoreboard players add @s[advancements={tns-winter:story/enter_glacier=false}] Favour 20
tellraw @s[advancements={tns-winter:story/enter_glacier=false}] {"text":"You gained 20 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s[advancements={tns-winter:story/enter_glacier=false}] ~ ~ ~
advancement grant @s only tns-winter:story/enter_glacier
# title @s actionbar {"text":"Lush Taiga","color":"green"}