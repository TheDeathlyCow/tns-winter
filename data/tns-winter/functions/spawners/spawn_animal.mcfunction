# as armour stands taged as "spawnerStand" who are ready to spawn
# at @s
# by tns-winter:spawners/check_spawners

execute if entity @s[tag=polarBearSpawner] run summon minecraft:polar_bear ~ ~ ~ {PersistenceRequired:1b,Tags:["spawnedAnimal"]}

execute if entity @s[tag=foxSpawner] if predicate tns-winter:biome/in_cold_biome run summon minecraft:fox ~ ~ ~ {Type:"snow",PersistenceRequired:1b,Tags:["spawnedAnimal"]}
execute if entity @s[tag=foxSpawner] if predicate tns-winter:biome/in_taiga run summon minecraft:fox ~ ~ ~ {PersistenceRequired:1b,Tags:["spawnedAnimal"]}

execute if entity @s[tag=rabbitSpawner] run summon minecraft:rabbit ~ ~ ~ {RabbitType:1,PersistenceRequired:1b,Tags:["spawnedAnimal"]}

scoreboard players set @s SpawnerTimer 0
