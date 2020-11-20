# Called by: command block 
#
#
scoreboard players enable @p FollowFish
tellraw @p ["",{"text":"Click ","color":"red"},{"text":"here","underlined":true,"color":"#20856a","clickEvent":{"action":"run_command","value":"/trigger FollowFish"},"hoverEvent":{"action":"show_text","contents":{"text":"Follow the Way of the Fish"}}},{"text":" to follow the Way of the Fish (note: you will lose all other animal totems).","color":"red"}]