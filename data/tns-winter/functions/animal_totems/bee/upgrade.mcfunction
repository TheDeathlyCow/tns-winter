# as a player who wants to buy a bee upgrade
#
# called by tns-winter:favour/display_shop
scoreboard players operation @s LevelOnPurchase = @s BeeTotemLevel

tellraw @s[scores={LevelOnPurchase=1,Favour=..499}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={LevelOnPurchase=1,Favour=500..}] {"text":"You upgraded your Bee Totem for 500 Favour! Use /trigger AnimalTotem to get a chest full of building materials and Haste 2 for 2 minutes!","color":"green"}
scoreboard players set @s[scores={LevelOnPurchase=1,Favour=500..}] BeeTotemLevel 2
scoreboard players remove @s[scores={LevelOnPurchase=1,Favour=500..}] Favour 500



tellraw @s[scores={LevelOnPurchase=0,Favour=..99}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={LevelOnPurchase=0,Favour=100..}] {"text":"You upgraded your Bee Totem for 100 Favour! Use /trigger AnimalTotem to get a chest full of wood and Haste 2 for 2 minutes!","color":"green"}
scoreboard players set @s[scores={LevelOnPurchase=0,Favour=100..}] BeeTotemLevel 1
scoreboard players remove @s[scores={LevelOnPurchase=0,Favour=100..}] Favour 100

scoreboard players reset @s LevelOnPurchase

