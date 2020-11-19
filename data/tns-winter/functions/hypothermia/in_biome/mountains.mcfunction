# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:hypothermia/detect_biome
title @s times 10 40 20
execute unless entity @s[tag=inMountains] run title @s title {"text":"The Mountains","color":"dark_purple","bold":"true"}
execute unless entity @s[tag=inMountains] run title @s subtitle {"text":"❄❄❄ Level 3 ❄❄❄","color":"dark_red","bold":"true"}
tag @s add inMountains
tag @s remove inTaiga
tag @s remove inSnowTaiga
tag @s remove inGlacier
tag @s remove inOcean
tag @s remove outsideMap

scoreboard players remove @s warmth 3
