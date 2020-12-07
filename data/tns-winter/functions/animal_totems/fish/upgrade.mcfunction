# as a player who wants to buy a bee upgrade
#
# called by tns-winter:favour/display_shop

tellraw @s[scores={FishTotemLevel=1,Favour=..499}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={FishTotemLevel=1,Favour=500..}] {"text":"You upgraded your Fish Totem for 500 Favour! Use /trigger AnimalTotem to get five minutes of water breathing and luck 2 for two minutes!","color":"green"}
scoreboard players remove @s[scores={FishTotemLevel=1,Favour=500..}] Favour 500
scoreboard players add @s[scores={FishTotemLevel=1,Favour=500..}] FishTotemLevel 1


tellraw @s[scores={FishTotemLevel=0,Favour=..249}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={FishTotemLevel=0,Favour=250..}] {"text":"You upgraded your Fish Totem for 250 Favour! Use /trigger AnimalTotem to get five minutes of water breathing and luck 1 for two minutes!","color":"green"}
scoreboard players remove @s[scores={FishTotemLevel=0,Favour=250..}] Favour 250
scoreboard players add @s[scores={FishTotemLevel=0,Favour=250..}] FishTotemLevel 1


