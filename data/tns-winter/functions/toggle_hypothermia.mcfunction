

execute if score hypothermiaEnabled winterBoolean matches 1 run scoreboard players set hypothermiaEnabled winterBoolean 0
execute if score hypothermiaEnabled winterBoolean matches 0 run scoreboard players set hypothermiaEnabled winterBoolean 1

# execute if score hypothermiaEnabled winterBoolean matches 1 as @a at @s run function tns-winter:hypothermia/update_warmth