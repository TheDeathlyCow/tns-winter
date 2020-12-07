# as a player who wants to buy a bee upgrade
#
# called by tns-winter:favour/display_shop

scoreboard players operation @s LevelOnPurchase = @s RavenTotemLevel

tellraw @s[scores={Favour=..999}] {"text":"You do not have enough Favour for this item!","color":"red"}
tellraw @s[scores={Favour=1000..}] {"text":"You upgraded your Raven Totem for 1000 Favour! You may now use any of the other totems one more time!","color":"green"}
scoreboard players add @s[scores={Favour=1000..}] RavenTotemLevel 1
scoreboard players remove @s[scores={Favour=1000..}] Favour 1000




scoreboard players reset @s LevelOnPurchase


