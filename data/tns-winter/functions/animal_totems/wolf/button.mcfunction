# Called by: command block 
#
#
scoreboard players enable @p FollowWolf
tellraw @p ["",{"text":"Click ","color":"gray"},{"text":"here","underlined":true,"color":"#1e1e38","clickEvent":{"action":"run_command","value":"/trigger FollowWolf"},"hoverEvent":{"action":"show_text","contents":{"text":"Follow the Way of the Wolf"}}},{"text":" to follow the Way of the Wolf (note: you will lose your current totem but its level will be preserved).","color":"gray"}]