# executed as @a[scores={FollowBee=1}]
# at @s
# called by: tns-winter:animal_totems/tick
tag @s remove BeeTotem
tag @s remove FishTotem
tag @s remove FoxTotem
tag @s remove RabbitTotem
tag @s remove WolfTotem
tag @s remove RavenTotem
tag @s add BearTotem

tellraw @s {"text":"Use /trigger AnimalTotem to give yourself regeneration 2 and absorption 2 for 30 seconds (Cooldown of 10 minutes). You will also gain some warmth while you have full hunger!","color":"aqua"}

playsound minecraft:entity.polar_bear.warning master @s ~ ~ ~ 1 0.9 1
scoreboard players set @s TotemCooldown 12001

scoreboard players add @s BearTotemLevel 0
team join bearGuide @s
advancement grant @s only tns-winter:totems/root
advancement grant @s only tns-winter:totems/glacier_root
advancement grant @s only tns-winter:totems/bear
