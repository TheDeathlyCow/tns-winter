# EXECUTED AS: ALL PLAYERS (@a)
# EXECUTED AT: THIS ENTITY (@s)
# CALLED BY: tns-winter:tick
execute if predicate tns-winter:biome/in_mountains unless entity @s[tag=inMountains] run function tns-winter:hypothermia/in_biome/mountains 
execute if predicate tns-winter:biome/in_taiga unless entity @s[tag=inTaiga] run function tns-winter:hypothermia/in_biome/taiga 
execute if predicate tns-winter:biome/in_snowy_taiga unless entity @s[tag=inSnowTaiga] run function tns-winter:hypothermia/in_biome/snowy_taiga 
execute if predicate tns-winter:biome/in_glacier unless entity @s[tag=inGlacier] run function tns-winter:hypothermia/in_biome/glacier 
execute if predicate tns-winter:biome/in_ocean unless entity @s[tag=inOcean] run function tns-winter:hypothermia/in_biome/ocean

execute unless predicate tns-winter:biome/in_mountains unless predicate tns-winter:biome/in_taiga unless predicate tns-winter:biome/in_snowy_taiga unless predicate tns-winter:biome/in_glacier unless predicate tns-winter:biome/in_ocean unless entity @s[tag=outsideMap] run function tns-winter:hypothermia/in_biome/outside_map