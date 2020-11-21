# executed as server
#
# called by: tns-winter:tick
execute as @a[scores={AnimalTotem=1}] at @s run function tns-winter:animal_totems/use_totem
scoreboard players set @a[scores={AnimalTotem=1}] AnimalTotem 0

scoreboard players add @a TotemCooldown 1
execute as @a if score @s TotemCooldown matches 13000.. run scoreboard players set @s TotemCooldown 13000

execute as @a[scores={TotemCooldown=12000}] run function tns-winter:animal_totems/ready_notif

execute as @a[scores={FollowBee=1}] at @s run function tns-winter:animal_totems/bee/follow
scoreboard players set @a[scores={FollowBee=1}] FollowBee 0

execute as @a[scores={FollowFish=1}] at @s run function tns-winter:animal_totems/fish/follow
scoreboard players set @a[scores={FollowFish=1}] FollowFish 0

execute as @a if score @s TotemCooldown matches 12000.. run scoreboard players enable @s AnimalTotem