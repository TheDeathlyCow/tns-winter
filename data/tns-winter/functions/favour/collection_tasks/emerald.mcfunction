# as @p
# at ambiguous
# called by command block
clear @s minecraft:emerald 8
advancement grant @s only tns-winter:tasks/collect/emerald
advancement revoke @s only tns-winter:tasks/collect/emerald
function tns-winter:favour/advancement_rewards/give_medium_favour