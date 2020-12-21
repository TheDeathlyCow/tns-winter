# as @p
# at ambiguous
# called by command block
clear @s minecraft:iron_ingot 12
advancement grant @s only tns-winter:tasks/collect/iron_ingot
advancement revoke @s only tns-winter:tasks/collect/iron_ingot
function tns-winter:favour/advancement_rewards/give_small_favour