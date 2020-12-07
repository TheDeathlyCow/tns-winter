# executed as @a[scores={FollowBee=1}]
# at @s
# called by: tns-winter:animal_totems/tick
tag @s remove BeeTotem
tag @s add FishTotem
tag @s remove FoxTotem
tag @s remove RabbitTotem
tag @s remove WolfTotem
tag @s remove RavenTotem
tag @s remove BearTotem


tellraw @s {"text":"Use /trigger AnimalTotem to give yourself a temporary boost to luck and water breathing!","color":"red"}
playsound minecraft:entity.fishing_bobber.splash master @s ~ ~ ~ 1 1 1
scoreboard players set @s TotemCooldown 12001
scoreboard players add @s FishTotemLevel 0

team join fishGuide @s
advancement grant @s only tns-winter:totems/root
advancement grant @s only tns-winter:totems/lush_taiga_root
advancement grant @s only tns-winter:totems/fish