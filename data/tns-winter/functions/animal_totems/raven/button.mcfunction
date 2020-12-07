# Called by: command block 
#
#
scoreboard players enable @p FollowRaven
tellraw @p ["",{"text":"Click ","color":"dark_purple"},{"text":"here","underlined":true,"color":"#200670","clickEvent":{"action":"run_command","value":"/trigger FollowRaven"},"hoverEvent":{"action":"show_text","contents":{"text":"Follow the Way of the Raven"}}},{"text":" to follow the Way of the Raven (note: you will lose your current totem but its level will be preserved).","color":"dark_purple"}]