# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:hypothermia/detect_biome
title @s times 10 40 20
execute unless entity @s[tag=inSnowTaiga] run title @s title {"text":"The Frozen Forest","color":"blue","bold":"true"}
execute unless entity @s[tag=inSnowTaiga] run title @s subtitle {"text":"❄❄","color":"aqua","bold":"false"}
tag @s add inSnowTaiga
tag @s add inColdBiome
tag @s remove inMountains
tag @s remove inTaiga
tag @s remove inGlacier
tag @s remove inOcean
tag @s remove outsideMap

scoreboard players add @s[advancements={tns-winter:story/enter_frozen_forest=false}] Favour 20
tellraw @s[advancements={tns-winter:story/enter_frozen_forest=false}] {"text":"You gained 20 favour!","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s[advancements={tns-winter:story/enter_frozen_forest=false}] ~ ~ ~
advancement grant @s only tns-winter:story/enter_frozen_forest
# title @s actionbar {"text":"Lush Taiga","color":"green"}