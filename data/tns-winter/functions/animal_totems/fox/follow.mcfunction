# executed as @a[scores={FollowFox=1}]
# at @s
# called by: tns-winter:animal_totems/tick
tag @s remove BeeTotem
tag @s remove FishTotem
tag @s add FoxTotem
tag @s remove RabbitTotem
tag @s remove WolfTotem
tag @s remove RavenTotem

tellraw @s {"text":"Use /trigger AnimalTotem to give yourself invisibility, speed, and temporary imunnity to hypothermia (Cooldown of 10 minutes)!","color":"#e8986f"}
playsound minecraft:entity.fox.eat master @s ~ ~ ~ 1 1 1
scoreboard players set @s TotemCooldown 12001

team join foxGuide @s
advancement grant @s only tns-winter:survival/totems/root
advancement grant @s only tns-winter:survival/totems/fox
