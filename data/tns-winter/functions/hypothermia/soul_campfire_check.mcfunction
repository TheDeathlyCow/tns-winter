# called as: @a
# called at: @s
# called by: tns-winter:hypothermia/update_warmth
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~-1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~0 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~-1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~0 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~-1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~0 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~1 minecraft:soul_campfire[lit=true] run function tns-winter:hypothermia/warm_player_soul
