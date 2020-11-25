# as armour stands taged as "spawnerStand"
# at @s
# by tns-winter:tick

scoreboard players add @s SpawnerTimer 1
execute store result score @s NearbyAnimals if entity @e[tag=spawnedAnimal,distance=..30]
execute if score @s SpawnerTimer matches 30.. unless score @s NearbyAnimals matches 5.. run function tns-winter:spawners/spawn_animal
