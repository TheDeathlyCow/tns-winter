# as @a[scores={AnimalTotem=1}] at @s
#
# called by tns-winter:animal_totems/use_totem
tag @s add UsingTotem
effect give @s minecraft:jump_boost 62 1 
effect give @s minecraft:speed 62 2
execute as @e[distance=..30] unless entity @s[tag=UsingTotem] run effect give @s minecraft:glowing 62 0 true

# enchant @s power 1
# enchant @s protection 1
# enchant @s efficiency 1
# enchant @s lure 1
# enchant @s fire_aspect 1
# enchant @s unbreaking 1
loot give @s[scores={RabbitTotemLevel=1},level=1..] loot tns-winter:gameplay/weak_enchanted_book
loot give @s[scores={RabbitTotemLevel=2},level=3..] loot tns-winter:gameplay/strong_enchanted_book

experience add @s[scores={RabbitTotemLevel=1},level=1..] -1 levels
experience add @s[scores={RabbitTotemLevel=2},level=3..] -3 levels


# playsound minecraft:entity.fox.eat master @s ~ ~ ~ 1 1 1
tellraw @s[scores={RabbitTotemLevel=0}] [{"text":"The Spirit of the Rabbit grants you increased mobility and the ability to see through walls...","color":"#8f3c0b"}]
tellraw @s[scores={RabbitTotemLevel=1..}] [{"text":"The Spirit of the Rabbit grants you great mobility and the power of its wisdom...","color":"#8f3c0b"}]

tag @s remove UsingTotem
