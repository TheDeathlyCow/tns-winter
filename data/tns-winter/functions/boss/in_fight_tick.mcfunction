# called every tick as players with the FightingBoss tag
# at @s
# called by tns-winter:boss/tick
scoreboard players add @s TimeSinceHit 1
scoreboard players operation @s TimeSinceHit %= ticksPerIceAttack winterDummy
execute as @s[scores={TimeSinceHit=99},gamemode=!spectator] if entity @e[type=minecraft:illusioner,distance=..20] run function tns-winter:boss/iceologer/ice_attack
# execute as @s[advancements={tns-winter:hidden/hit_by_iceologer=true}] run function tns-winter:boss/iceologer/player_take_shot


