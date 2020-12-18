# as all players with winterhelp=1
# at @s
# called by tns-winter:tick, login advancement
loot give @s loot tns-winter:advancement_rewards/login
scoreboard players add @s WinterHelp 0
scoreboard players set @a[scores={WinterHelp=0}] TotemCooldown 37000
scoreboard players set @s WinterHelp 0
tellraw @s {"text":"====================================================","color":"dark_green"}
tellraw @s {"text":"TNS 2020 Winter Event - Help","color":"dark_purple","bold":true}
tellraw @s [{"text":"To get another copy of this book, type ","color":"aqua"},{"text":"/trigger WinterHelp","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger WinterHelp set 1"}},{"text":"."}]
tellraw @s [{"text":"Created by: ","color":"aqua"},{"text":"TheDeathlyCow","color":"#9393cc","bold":true}]
tellraw @s [{"text":"With help from: ","color":"aqua"},{"text":"_H3rbu_","color":"#0e8c20","bold":true}]
tellraw @s [{"text":"With textures by: ","color":"aqua"},{"text":"ShadowsCrow","color":"dark_purple","bold":true},{"text":" and ","color":"aqua"},{"text":"ewanhowell5195","color":"dark_purple","bold":true}]
tellraw @s [{"text":"For more detailed information, check the official wiki here: ","color":"aqua"},{"text":"https://github.com/TheDeathlyCow/tns-winter/wiki","underlined":true,"color":"dark_purple","clickEvent":{"action":"open_url","value":"https://github.com/TheDeathlyCow/tns-winter/wiki"}}]
tellraw @s {"text":"====================================================","color":"dark_green"}

playsound minecraft:entity.player.levelup master @s ~ ~ ~


