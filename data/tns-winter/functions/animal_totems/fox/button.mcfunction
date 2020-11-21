# Called by: command block 
#
#
scoreboard players enable @p FollowFox
tellraw @p ["",{"text":"Click ","color":"#e8986f"},{"text":"here","underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger FollowFox"},"hoverEvent":{"action":"show_text","contents":{"text":"Follow the Way of the Fox"}}},{"text":" to follow the Way of the Fox (note: you will lose all other animal totems).","color":"#e8986f"}]