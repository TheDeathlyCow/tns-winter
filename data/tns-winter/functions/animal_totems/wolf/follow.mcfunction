# executed as @a[scores={FollowFox=1}]
# at @s
# called by: tns-winter:animal_totems/tick
tag @s remove BeeTotem
tag @s remove FishTotem
tag @s remove FoxTotem
tag @s remove RabbitTotem
tag @s add WolfTotem
tag @s remove RavenTotem

tellraw @s {"text":"Use /trigger AnimalTotem to give yourself strength and companionship if you are in need!","color":"gray"}
playsound minecraft:entity.wolf.howl master @s ~ ~ ~ 1 1 1
scoreboard players set @s TotemCooldown 12001

team join wolfGuide @s
advancement grant @s only tns-winter:totems/root
advancement grant @s only tns-winter:totems/wolf
