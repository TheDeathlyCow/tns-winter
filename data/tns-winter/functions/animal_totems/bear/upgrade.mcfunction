# as a player who wants to buy a bee upgrade
#
# called by tns-winter:favour/display_shop
scoreboard players operation @s LevelOnPurchase = @s BearTotemLevel

tellraw @s[scores={LevelOnPurchase=1,Favour=..499}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={LevelOnPurchase=1,Favour=500..}] {"text":"You upgraded your Polar Bear for 1000 Favour! Use /trigger AnimalTotem to get a healing boost! If your hunger is full, you will gain warmth.","color":"green"}
scoreboard players set @s[scores={LevelOnPurchase=1,Favour=500..}] BearTotemLevel 2
scoreboard players remove @s[scores={LevelOnPurchase=1,Favour=500..}] Favour 500



tellraw @s[scores={LevelOnPurchase=0,Favour=..749}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={LevelOnPurchase=0,Favour=750..}] {"text":"You upgraded your Polar Bear Totem for 750 Favour! Use /trigger AnimalTotem to get a regeneration 2 and absorption 2 for 30 seconds!","color":"green"}
scoreboard players set @s[scores={LevelOnPurchase=0,Favour=750..}] BearTotemLevel 1
scoreboard players remove @s[scores={LevelOnPurchase=0,Favour=750..}] Favour 750

scoreboard players reset @s LevelOnPurchase

