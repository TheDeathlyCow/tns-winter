# executed as server
#
# called by: tns-winter:tick
execute as @a[scores={AnimalTotem=1}] at @s run function tns-winter:animal_totems/use_totem
scoreboard players set @a[scores={AnimalTotem=1}] AnimalTotem 0

scoreboard players add @a TotemCooldown 1
scoreboard players set @a[scores={TotemCooldown=37001..}] TotemCooldown 37000

execute as @a[scores={TotemCooldown=12000},tag=!BeeTotem] run function tns-winter:animal_totems/ready_notif
execute as @a[scores={TotemCooldown=36000},tag=BeeTotem] run function tns-winter:animal_totems/ready_notif


execute as @a[scores={FollowBee=1}] at @s run function tns-winter:animal_totems/bee/follow
scoreboard players set @a[scores={FollowBee=1}] FollowBee 0

execute as @a[scores={FollowFish=1}] at @s run function tns-winter:animal_totems/fish/follow
scoreboard players set @a[scores={FollowFish=1}] FollowFish 0

execute as @a[scores={FollowFox=1}] at @s run function tns-winter:animal_totems/fox/follow
scoreboard players set @a[scores={FollowFox=1}] FollowFox 0

execute as @a[scores={FollowRabbit=1}] at @s run function tns-winter:animal_totems/rabbit/follow
scoreboard players set @a[scores={FollowRabbit=1}] FollowRabbit 0

execute as @a[scores={FollowWolf=1}] at @s run function tns-winter:animal_totems/wolf/follow
scoreboard players set @a[scores={FollowWolf=1}] FollowWolf 0

execute as @a[scores={FollowRaven=1}] at @s run function tns-winter:animal_totems/raven/follow
scoreboard players set @a[scores={FollowRaven=1}] FollowRaven 0

execute as @a[scores={FollowBear=1}] at @s run function tns-winter:animal_totems/bear/follow
scoreboard players set @a[scores={FollowBear=1}] FollowBear 0

scoreboard players add @e[tag=summonedWolf] wolfPackTimer 1
execute as @e[tag=summonedWolf] at @s if score @s wolfPackTimer matches 2400.. run function tns-winter:animal_totems/wolf/dissummon_wolf_pack

scoreboard players enable @a[scores={TotemCooldown=12000..},tag=!BeeTotem] AnimalTotem
scoreboard players enable @a[scores={TotemCooldown=36000..},tag=BeeTotem] AnimalTotem

# execute as @a if score @s TotemCooldown matches 12000.. unless entity @s[tag=BeeTotem] run scoreboard players enable @s AnimalTotem
# execute as @a if score @s TotemCooldown matches 12000.. if entity @s[tag=RavenTotem] run scoreboard players enable @s RavenTotem
# execute as @a if score @s TotemCooldown matches 36000.. if entity @s[tag=BeeTotem] run scoreboard players enable @s AnimalTotem

# raven-specific
execute as @a[scores={RavenTotem=1}] at @s unless entity @s[tag=RavenUsedBee] run function tns-winter:animal_totems/raven/use_bee
execute as @a[scores={RavenTotem=2}] at @s unless entity @s[tag=RavenUsedFish] run function tns-winter:animal_totems/raven/use_fish
execute as @a[scores={RavenTotem=3}] at @s unless entity @s[tag=RavenUsedRabbit] run function tns-winter:animal_totems/raven/use_rabbit
execute as @a[scores={RavenTotem=4}] at @s unless entity @s[tag=RavenUsedFox] run function tns-winter:animal_totems/raven/use_fox
execute as @a[scores={RavenTotem=5}] at @s unless entity @s[tag=RavenUsedWolf] run function tns-winter:animal_totems/raven/use_wolf
scoreboard players set @a RavenTotem 0