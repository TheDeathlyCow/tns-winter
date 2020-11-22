# Called by: command block 
#
#
scoreboard players enable @p FollowBee
tellraw @p ["",{"text":"Click ","color":"gold"},{"text":"here","underlined":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger FollowBee"},"hoverEvent":{"action":"show_text","contents":{"text":"Follow the Way of the Bee"}}},{"text":" to follow the Way of the Bee (note: you will lose all other animal totems).","color":"gold"}]