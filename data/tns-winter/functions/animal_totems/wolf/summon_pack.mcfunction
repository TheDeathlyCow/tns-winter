# as @a[scores={AnimalTotem=1}] at @s
#
# called by tns-winter:animal_totems/wolf/use
tag @s add summonedWolf
summon minecraft:wolf ~ ~ ~ {CustomName:'{"text":"Wolf Spirit","color":"aqua"}',Tags:["summonedWolf"],DeathLootTable:"tns-winter:entities/wolf_spirit"}
summon minecraft:wolf ~ ~ ~ {CustomName:'{"text":"Wolf Spirit","color":"aqua"}',Tags:["summonedWolf"],DeathLootTable:"tns-winter:entities/wolf_spirit"}
summon minecraft:wolf ~ ~ ~ {CustomName:'{"text":"Wolf Spirit","color":"aqua"}',Tags:["summonedWolf"],DeathLootTable:"tns-winter:entities/wolf_spirit"}
summon minecraft:wolf ~ ~ ~ {CustomName:'{"text":"Wolf Spirit","color":"aqua"}',Tags:["summonedWolf"],DeathLootTable:"tns-winter:entities/wolf_spirit"}

execute as @e[type=wolf,tag=summonedWolf,distance=..5] run data modify entity @s Owner set from entity @p UUID
scoreboard players set @e[tag=summonedWolf,distance=..5] wolfPackTimer 0
