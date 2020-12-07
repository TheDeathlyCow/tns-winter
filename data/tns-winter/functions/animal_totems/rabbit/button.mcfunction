# Called by: command block 
#
#
scoreboard players enable @p FollowRabbit
tellraw @p ["",{"text":"Click ","color":"#8f3c0b"},{"text":"here","underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger FollowRabbit"},"hoverEvent":{"action":"show_text","contents":{"text":"Follow the Way of the Rabbit"}}},{"text":" to follow the Way of the Rabbit (note: you will lose your current totem but its level will be preserved).","color":"#8f3c0b"}]