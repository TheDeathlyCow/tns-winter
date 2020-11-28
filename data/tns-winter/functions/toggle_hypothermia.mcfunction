
scoreboard players add hypothermiaEnabled winterBoolean 1
scoreboard players operation hypothermiaEnabled winterBoolean %= switchBoolean winterBoolean
# execute if score hypothermiaEnabled winterBoolean matches 1 as @a at @s run function tns-winter:hypothermia/update_warmth