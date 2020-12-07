# as a player who wants to buy a bee upgrade
#
# called by tns-winter:favour/display_shop

tellraw @s[scores={BeeTotemLevel=1,Favour=..499}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={BeeTotemLevel=1,Favour=500..}] {"text":"You upgraded your Bee Totem for 500 Favour! Use /trigger AnimalTotem to get a chest full of building materials and Haste 2 for 2 minutes!","color":"green"}
scoreboard players remove @s[scores={BeeTotemLevel=1,Favour=500..}] Favour 500
scoreboard players add @s[scores={BeeTotemLevel=1,Favour=500..}] BeeTotemLevel 1


tellraw @s[scores={BeeTotemLevel=0,Favour=..249}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={BeeTotemLevel=0,Favour=250..}] {"text":"You upgraded your Bee Totem for 250 Favour! Use /trigger AnimalTotem to get a chest full of wood and Haste 2 for 2 minutes!","color":"green"}
scoreboard players remove @s[scores={BeeTotemLevel=0,Favour=250..}] Favour 250
scoreboard players add @s[scores={BeeTotemLevel=0,Favour=250..}] BeeTotemLevel 1


