# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:hypothermia/detect_biome
title @s times 10 40 20
execute unless entity @s[tag=outsideMap] run title @s title {"text":"Outside the map","color":"dark_red","bold":"true"}
execute unless entity @s[tag=inTaiga] run title @s subtitle {"text":"Level 99","color":"red","bold":"false"}
tag @s add outsideMap
tag @s remove inColdBiome
tag @s remove inMountains
tag @s remove inSnowTaiga
tag @s remove inGlacier
tag @s remove inOcean
tag @s remove inTaiga

scoreboard players remove @s warmth 10
# title @s actionbar {"text":"Lush Taiga","color":"green"}