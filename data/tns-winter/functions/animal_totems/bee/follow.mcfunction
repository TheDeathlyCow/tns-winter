# executed as @a[scores={FollowBee=1}]
# at @s
# called by: tns-winter:animal_totems/tick
tag @s add BeeTotem
tag @s remove FishTotem
tag @s remove FoxTotem
tag @s remove RabbitTotem
tag @s remove WolfTotem
tag @s remove RavenTotem
tag @s remove BearTotem


tellraw @s {"text":"Use /trigger AnimalTotem to give yourself building materials and haste 2 (Cooldown of 10 minutes)!","color":"gold"}
playsound minecraft:entity.bee.loop_aggressive master @s ~ ~ ~ 1 1 1
# scoreboard players set @s TotemCooldown 36001
scoreboard players add @s BeeTotemLevel 0

team join beeGuide @s

tellraw @s[advancements={tns-winter:totems/bee=false}] {"text":"This totem is fairly weak to start. Use /trigger FavourShop and select 'Upgrade Bee Totem' to get a Haste 2 effect when you use this totem.","color":"light_purple"}
scoreboard players add @s[advancements={tns-winter:totems/root=false}] warmth 100 

advancement grant @s only tns-winter:totems/root
advancement grant @s only tns-winter:totems/lush_taiga_root
advancement grant @s only tns-winter:totems/bee
