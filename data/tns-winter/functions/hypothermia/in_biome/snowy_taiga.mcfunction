# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:hypothermia/detect_biome
title @s times 10 40 20
execute unless entity @s[tag=inSnowTaiga] run title @s title {"text":"The Frozen Forest","color":"blue","bold":"true"}
execute unless entity @s[tag=inSnowTaiga] run title @s subtitle {"text":"❄❄ Level 2 ❄❄","color":"aqua","bold":"false"}
tag @s add inSnowTaiga
tag @s remove inMountains
tag @s remove inTaiga
tag @s remove inGlacier
tag @s remove inOcean
tag @s remove outsideMap

scoreboard players remove @s warmth 1
# title @s actionbar {"text":"Lush Taiga","color":"green"}