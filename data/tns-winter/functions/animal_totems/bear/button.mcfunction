# Called by: command block 
#
#
scoreboard players enable @p FollowBear
tellraw @p ["",{"text":"Click ","color":"#0a99ff"},{"text":"here","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger FollowBear"},"hoverEvent":{"action":"show_text","contents":{"text":"Follow the Way of the Bear"}}},{"text":" to follow the Way of the Bear (note: you will lose all other animal totems).","color":"#0a99ff"}]