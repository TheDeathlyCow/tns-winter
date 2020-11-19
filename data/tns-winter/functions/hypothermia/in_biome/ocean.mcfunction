# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:hypothermia/detect_biome
# execute unless entity @s[tag=inOcean] run title @s title {"text":"The Water","color":"dark_green","bold":"true"}
# execute unless entity @s[tag=inOcean] run title @s subtitle {"text":"Level 1","color":"green","bold":"false"}
tag @s add inOcean
tag @s remove inColdBiome
tag @s remove inMountains
tag @s remove inSnowTaiga
tag @s remove inGlacier
tag @s remove inTaiga
tag @s remove outsideMap

# title @s actionbar {"text":"Lush Taiga","color":"green"}