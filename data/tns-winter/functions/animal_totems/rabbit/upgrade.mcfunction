# as a player who wants to buy a bee upgrade
#
# called by tns-winter:favour/display_shop

tellraw @s[scores={RabbitTotemLevel=1,Favour=..749}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={RabbitTotemLevel=1,Favour=750..}] {"text":"You upgraded your Rabbit Totem for 750 Favour! Use /trigger AnimalTotem to get a mobility boost, entity vision, and a randomly enchanted book!","color":"green"}
scoreboard players remove @s[scores={RabbitTotemLevel=1,Favour=750..}] Favour 750
scoreboard players add @s[scores={RabbitTotemLevel=1,Favour=750..}] RabbitTotemLevel 1


tellraw @s[scores={RabbitTotemLevel=0,Favour=..249}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={RabbitTotemLevel=0,Favour=250..}] {"text":"You upgraded your Rabbit Totem for 250 Favour! Use /trigger AnimalTotem to get a mobility boost, entity vision, and a randomly enchanted book!!","color":"green"}
scoreboard players remove @s[scores={RabbitTotemLevel=0,Favour=250..}] Favour 250
scoreboard players add @s[scores={RabbitTotemLevel=0,Favour=250..}] RabbitTotemLevel 1


