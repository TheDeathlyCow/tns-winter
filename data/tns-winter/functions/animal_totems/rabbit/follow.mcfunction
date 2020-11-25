# executed as @a[scores={FollowFox=1}]
# at @s
# called by: tns-winter:animal_totems/tick
tag @s remove BeeTotem
tag @s remove FishTotem
tag @s remove FoxTotem
tag @s add RabbitTotem
tag @s remove WolfTotem
tag @s remove RavenTotem

tellraw @s {"text":"Use /trigger AnimalTotem to give yourself jump boost, the ability to see all nearby entities, and to enchant your held item (Cooldown of 10 minutes)!","color":"#8f3c0b"}
playsound minecraft:entity.rabbit.attack master @s ~ ~ ~ 1 1 1
scoreboard players set @s TotemCooldown 12001

team join rabbitGuide @s
advancement grant @s only tns-winter:totems/root
advancement grant @s only tns-winter:totems/rabbit
