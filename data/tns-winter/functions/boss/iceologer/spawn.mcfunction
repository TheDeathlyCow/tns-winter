# unknown call data
#
#
tag @s add FightingBoss
summon illusioner ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:1b,Health:100f,Tags:["chillagerBoss"],CustomName:'{"text":"Iceologer","color":"aqua","bold":true}',HandItems:[{id:'minecraft:bow',Count:1b},{id:'minecraft:tipped_arrow',Count:1b,tag:{Potion:'minecraft:slowness'}}],ActiveEffects:[{Id:10b,Amplifier:2b,Duration:99999,ShowParticles:1b},{Id:11b,Amplifier:1b,Duration:99999,ShowParticles:1b},{Id:12b,Amplifier:0b,Duration:99999,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1}]}
scoreboard players set NumFighters winterDummy 0
execute as @a[tag=FightingBoss] run scoreboard players add NumFighters winterDummy 1
execute if score NumFighters winterDummy matches 1 run data modify entity @e[type=illusioner,tag=chillagerBoss,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base set value 100
execute if score NumFighters winterDummy matches 2 run data modify entity @e[type=illusioner,tag=chillagerBoss,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base set value 200
execute if score NumFighters winterDummy matches 3 run data modify entity @e[type=illusioner,tag=chillagerBoss,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base set value 300
execute if score NumFighters winterDummy matches 4.. run data modify entity @e[type=illusioner,tag=chillagerBoss,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base set value 400

# debug only
# data modify entity @e[type=illusioner,tag=chillagerBoss,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base set value 800


effect give @e[type=illusioner,tag=chillagerBoss,limit=1] minecraft:instant_health 1 20 true
bossbar add iceologer {"text":"Iceologer","color":"aqua","bold":true}
bossbar set minecraft:iceologer color blue
bossbar set minecraft:iceologer style notched_10
# bossbar set minecraft:iceologer max 100
execute store result bossbar minecraft:iceologer max run data get entity @e[type=illusioner,tag=chillagerBoss,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base