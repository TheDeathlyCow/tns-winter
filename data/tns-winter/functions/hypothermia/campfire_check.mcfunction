# called as: @a
# called at: @s
# called by: tns-winter:hypothermia/update_warmth
# say campfire check
tellraw @a {"text":"The method tns-winter:hypothermia/campfire_check is deprecated, please use the predicate instead!", "color":"red"}
execute if score warmedPlayers winterBoolean matches 0 if block ~-3 ~0 ~-3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-3 ~0 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-3 ~0 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-3 ~0 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-3 ~0 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-3 ~0 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-3 ~0 ~3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~0 ~-3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~0 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~0 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~0 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~0 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~0 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~0 ~3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~-3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~0 ~3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~-3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~0 ~3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~-3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~0 ~3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~0 ~-3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~0 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~0 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~0 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~0 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~0 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~0 ~3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~3 ~0 ~-3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~3 ~0 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~3 ~0 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~3 ~0 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~3 ~0 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~3 ~0 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~3 ~0 ~3 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player

execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~-1 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~-1 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~-1 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~-1 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-2 ~-1 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~-1 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~-1 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~-1 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~-1 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~-1 ~-1 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~-1 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~-1 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~-1 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~-1 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~0 ~-1 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~-1 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~-1 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~-1 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~-1 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~1 ~-1 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~-1 ~-2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~-1 ~-1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~-1 ~0 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~-1 ~1 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player
execute if score warmedPlayers winterBoolean matches 0 if block ~2 ~-1 ~2 minecraft:campfire[lit=true] run function tns-winter:hypothermia/warm_player

# scoreboard players set warmedPlayers winterBoolean 0
