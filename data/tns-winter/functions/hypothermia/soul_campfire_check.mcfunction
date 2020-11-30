# called as: @a
# called at: @s
# called by: tns-winter:hypothermia/update_warmth
tellraw @a {"text":"The method tns-winter:hypothermia/campfire_check is deprecated, please use the predicate instead!", "color":"red"}
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~-1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~0 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~-1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~0 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~-1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~0 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
