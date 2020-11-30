# as all frost spirits' RIDER
# at @s
# called by tns-winter:boss/tick
# say tick?
execute as @a[distance=..10] run function tns-winter:boss/frost_spirit/absorb_heat
execute if entity @s[nbt={OnGround:1b}] run function tns-winter:boss/frost_spirit/died
particle minecraft:portal ~ ~-1 ~ 2 2 2 1 100