# as @p
# at ambiguous
# called by command block
clear @s minecraft:honey_block 8
advancement grant @s only tns-winter:tasks/collect/honey
advancement revoke @s only tns-winter:tasks/collect/honey
function tns-winter:favour/advancement_rewards/give_medium_favour