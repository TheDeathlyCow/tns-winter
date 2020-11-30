# executed as @a[scores={FollowFox=1}]
# at @s
# called by: tns-winter:animal_totems/tick
tag @s remove BeeTotem
tag @s remove FishTotem
tag @s remove FoxTotem
tag @s remove RabbitTotem
tag @s remove WolfTotem
tag @s add RavenTotem

# raven-specific tags
tag @s remove RavenUsedBee
tag @s remove RavenUsedFish
tag @s remove RavenUsedFox
tag @s remove RavenUsedRabbit
tag @s remove RavenUsedWolf


tellraw @s {"text":"Use /trigger AnimalTotem to call upon any Spirit you choose!","color":"dark_purple"}
playsound minecraft:entity.parrot.ambient master @s ~ ~ ~ 1 0.5 1
scoreboard players set @s TotemCooldown 12001

team join ravenGuide @s
advancement grant @s only tns-winter:totems/root
advancement grant @s only tns-winter:totems/glacier_root
advancement grant @s only tns-winter:totems/raven
