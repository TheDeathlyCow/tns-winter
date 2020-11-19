# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:hypothermia/detect_biome
title @s times 10 40 20
execute unless entity @s[tag=inTaiga] unless entity @s[tag=inOcean] run title @s title {"text":"The Lush Taiga","color":"dark_green","bold":"true"}
execute unless entity @s[tag=inTaiga] unless entity @s[tag=inOcean] run title @s subtitle {"text":"❄ Level 1 ❄","color":"green","bold":"false"}
tag @s add inTaiga
tag @s remove inMountains
tag @s remove inSnowTaiga
tag @s remove inGlacier
tag @s remove inOcean
tag @s remove outsideMap

# title @s actionbar {"text":"Lush Taiga","color":"green"}