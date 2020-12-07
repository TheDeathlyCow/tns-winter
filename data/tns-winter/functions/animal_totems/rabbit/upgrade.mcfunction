# as a player who wants to buy a bee upgrade
#
# called by tns-winter:favour/display_shop

scoreboard players operation @s LevelOnPurchase = @s RabbitTotemLevel

tellraw @s[scores={LevelOnPurchase=1,Favour=..749}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={LevelOnPurchase=1,Favour=750..}] {"text":"You upgraded your Rabbit Totem for 750 Favour! Use /trigger AnimalTotem to get a mobility boost, entity vision, and a randomly enchanted book!","color":"green"}
scoreboard players set @s[scores={LevelOnPurchase=1,Favour=750..}] RabbitTotemLevel 2
scoreboard players remove @s[scores={LevelOnPurchase=1,Favour=750..}] Favour 750



tellraw @s[scores={LevelOnPurchase=0,Favour=..249}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={LevelOnPurchase=0,Favour=250..}] {"text":"You upgraded your Rabbit Totem for 250 Favour! Use /trigger AnimalTotem to get a mobility boost, entity vision, and a randomly enchanted book!!","color":"green"}
scoreboard players set @s[scores={LevelOnPurchase=0,Favour=250..}] RabbitTotemLevel 1
scoreboard players remove @s[scores={LevelOnPurchase=0,Favour=250..}] Favour 250

scoreboard players reset @s LevelOnPurchase


