# as a player who wants to buy a bee upgrade
#
# called by tns-winter:favour/display_shop
scoreboard players operation @s LevelOnPurchase = @s WolfTotemLevel

tellraw @s[scores={LevelOnPurchase=1,Favour=..799}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={LevelOnPurchase=1,Favour=800..}] {"text":"You upgraded your Wolf Totem for 800 Favour! Use /trigger AnimalTotem to get strength 2, and summon a pack of upgraded wolves if there are no nearby players!","color":"green"}
scoreboard players set @s[scores={LevelOnPurchase=1,Favour=800..}] WolfTotemLevel 2
scoreboard players remove @s[scores={LevelOnPurchase=1,Favour=800..}] Favour 800



tellraw @s[scores={LevelOnPurchase=0,Favour=..499}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={LevelOnPurchase=0,Favour=500..}] {"text":"You upgraded your Wolf Totem for 500 Favour! Use /trigger AnimalTotem to get strength 2, and summon a pack of wolves if there are no nearby players!","color":"green"}
scoreboard players set @s[scores={LevelOnPurchase=0,Favour=500..}] WolfTotemLevel 1
scoreboard players remove @s[scores={LevelOnPurchase=0,Favour=500..}] Favour 500

scoreboard players reset @s LevelOnPurchase


