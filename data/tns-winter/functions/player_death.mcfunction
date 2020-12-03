# as players with death score of >=1
# at spawn
# called by tns-winter:tick

scoreboard players operation @s FavourBackup = @s Favour 
scoreboard players operation @s Favour /= FavourDeathPenalty winterDummy 
tellraw @s [{"text":"You died and lost ","color":"red"},{"score":{"name":"@s","objective":"Favour"},"color":"gold"},{"text": " Favour!","color":"red"}]
scoreboard players operation @s FavourBackup -= @s Favour
scoreboard players operation @s Favour = @s FavourBackup
scoreboard players reset @s FavourBackup

playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.3 1