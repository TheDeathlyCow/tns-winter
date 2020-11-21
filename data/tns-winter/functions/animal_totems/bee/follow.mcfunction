# executed as @a[scores={FollowBee=1}]
# at @s
# called by: tns-winter:animal_totems/tick
tag @s add BeeTotem
tag @s remove FishTotem
tag @s remove FoxTotem
tag @s remove RabbitTotem
tag @s remove WolfTotem
tag @s remove RavenTotem

tellraw @s {"text":"Use /trigger AnimalTotem to give yourself building materials and haste 2 (Cooldown of 10 minutes)!","color":"gold"}
playsound minecraft:entity.bee.loop_aggressive master @s ~ ~ ~ 1 1 1
scoreboard players set @s TotemCooldown 12001

team join beeGuide @s
advancement grant @s tns-winter:survival/totems/root
advancement grant @s tns-winter:survival/totems/bee
